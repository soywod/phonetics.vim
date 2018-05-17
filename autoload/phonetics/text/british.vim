fun! phonetics#text#british#Scrap(word)
  let l:regex = 'BrE<\/span><span class="separator">\/<\/span><span class="wrap">\/<\/span>\(.\{-}\)<'
  retu phonetics#text#common#Scrap(l:regex, a:word)
endf

