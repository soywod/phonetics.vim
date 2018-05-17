fun! phonetics#text#common#Echo(accent)
  let l:word = phonetics#core#GetWord()
  let l:accent = phonetics#core#GetAccent(a:accent)

  call phonetics#core#Scrap(l:accent, 'text', l:word)
endf

