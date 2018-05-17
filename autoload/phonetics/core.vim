fun! phonetics#core#GetHTML(word)
  let l:url = 'curl -L https://www.oxfordlearnersdictionaries.com/definition/english/' . a:word . '_1?q=' . a:word
  retu system(l:url)
endf

fun! phonetics#core#GetWord()
  retu expand('<cword>')
endf

fun! phonetics#core#GetAccent(accent)
  if a:accent != '' | retu a:accent | en
  retu get(g:, 'phonetics_default_accent', 'british')
endf

fun! phonetics#core#Scrap(accent, type, word)
  let l:word = tolower(a:word)
  exe 'let l:response = phonetics#' . a:type . '#' . a:accent . '#Scrap(l:word)'

  if empty(l:response) | th 'phonetics-not-found' | en

  exe 'echom "[' . toupper(a:accent) . '] Phonetics of \"' . l:word . '\" => ' . l:response[0] . '"'

  retu l:response
endf

