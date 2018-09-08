function! phonetics#core#GetHTML(word)
  let url = 'https://www.oxfordlearnersdictionaries.com/definition/english/' . a:word . '_1?q=' . a:word
  let cmd = 'curl -L ' . shellescape(url)

  return system(cmd)
endfunction

function! phonetics#core#GetWord()
  return tolower(expand('<cword>'))
endfunction

function! phonetics#core#GetAccent(accent)
  if a:accent == '' | return get(g:, 'phonetics_default_accent', 'british') | endif
  if a:accent != 'british' && a:accent != 'american' | throw 'invalid-accent' | endif

  return a:accent
endfunction

function! phonetics#core#Scrap(accent, type)
  let accent = phonetics#core#GetAccent(a:accent)
  let word   = phonetics#core#GetWord()
  execute 'let response = phonetics#' . a:type . '#' . accent . '#Scrap(word)'

  if empty(response) | throw 'phonetics-not-found' | endif

  let phonetics = substitute(response[0], '<\/\?span.\{-}>', '', 'g')
  execute 'echom "[' . toupper(accent) . '] ' . word . ' = ' . phonetics . '"'

  return response
endfunction

function! phonetics#core#ErrorMsg(message)
  echohl ErrorMsg
  echo a:message
  echohl None
endfunction
