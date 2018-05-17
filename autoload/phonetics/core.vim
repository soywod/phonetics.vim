fun! phonetics#core#GetHTML(word)
  let l:url = 'curl -L https://www.oxfordlearnersdictionaries.com/definition/english/' . a:word . '_1?q=' . a:word
  return system(l:url)
endf

fun! phonetics#core#GetWord()
  return expand('<cword>')
endf

fun! phonetics#core#GetAccent(accent)
  if a:accent == ''
    return get(g:, 'phonetics_default_accent', 'british')
  else
    return a:accent
  endif
endf

fun! phonetics#core#Scrap(accent, type, word)
  let l:word = tolower(a:word)

  exe 'let l:response = phonetics#' . a:type . '#' . a:accent . '#Scrap(l:word)'
  exe 'echom "[' . toupper(a:accent) . '] Phonetics of \"' . l:word . '\" => ' . l:response[0] . '"'

  return l:response
endf

