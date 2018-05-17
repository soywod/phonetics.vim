function! phonetics#core#GetHTML(word)
  let l:url = 'https://www.oxfordlearnersdictionaries.com/definition/english/' . a:word . '_1?q=' . a:word
  let l:cmd = 'curl -L ' . shellescape(l:url)
  retu system(l:cmd)
endfunction

function! phonetics#core#GetWord()
  retu tolower(expand('<cword>'))
endfunction

function! phonetics#core#GetAccent(accent)
  if a:accent == '' | return get(g:, 'phonetics_default_accent', 'british') | endif
  if a:accent != 'british' && a:accent != 'american' | throw 'invalid-accent' | endif
  return a:accent
endfunction

function! phonetics#core#Scrap(accent, type)
  let l:accent = phonetics#core#GetAccent(a:accent)
  let l:word = phonetics#core#GetWord()
  execute 'let l:response = phonetics#' . a:type . '#' . l:accent . '#Scrap(l:word)'

  if empty(l:response) | throw 'phonetics-not-found' | endif

  let l:phonetics = substitute(l:response[0], '<\/\?span.\{-}>', '', 'g')
  execute 'echom "[' . toupper(l:accent) . '] Phonetics of \"' . l:word . '\" => ' . l:phonetics . '"'

  return l:response
endfunction

function! phonetics#core#ErrorMsg(message)
  echohl ErrorMsg
  echo a:message
  echohl None
endfunction

