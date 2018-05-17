fun! phonetics#audio#british#Scrap(word)
  let l:regex = 'BrE<\/span><span class="separator">\/<\/span><span class="wrap">\/<\/span>\(.\{-}\)<.\{-}mp3="\(.\{-}\)"'
  return phonetics#audio#common#Scrap(l:regex, a:word)
endf

