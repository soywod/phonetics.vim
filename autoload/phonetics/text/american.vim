fun! phonetics#text#american#Scrap(word)
  let l:regex = 'NAmE<\/span><span class="separator">\/<\/span><span class="wrap">\/<\/span>\(.\{-}\)<'
  retu phonetics#text#common#Scrap(l:regex, a:word)
endf

