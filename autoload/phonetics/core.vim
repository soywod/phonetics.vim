fun! phonetics#core#GetHTML(word)
  let l:url = 'https://www.oxfordlearnersdictionaries.com/definition/english/' . a:word . '_1?q=' . a:word
  let l:cmd = 'curl -L ' . shellescape(l:url)
  retu system(l:cmd)
endf

fun! phonetics#core#GetWord()
  retu tolower(expand('<cword>'))
endf

fun! phonetics#core#GetAccent(accent)
  if a:accent == '' | retu get(g:, 'phonetics_default_accent', 'british') | en
  if a:accent != 'british' && a:accent != 'american' | th 'invalid-accent' | en
  retu a:accent
endf

fun! phonetics#core#Scrap(accent, type)
  let l:accent = phonetics#core#GetAccent(a:accent)
  let l:word = phonetics#core#GetWord()
  exe 'let l:response = phonetics#' . a:type . '#' . l:accent . '#Scrap(l:word)'

  if empty(l:response) | th 'phonetics-not-found' | en

  exe 'echom "[' . toupper(l:accent) . '] Phonetics of \"' . l:word . '\" => ' . l:response[0] . '"'

  retu l:response
endf

fun! phonetics#core#ErrorMsg(message)
  echohl ErrorMsg
  echo a:message
  echohl None
endf
