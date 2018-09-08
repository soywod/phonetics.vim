function! phonetics#text#british#Scrap(word)
  let regex = 'BrE.\{-}separator">\/<\/span>\(.\{-}\)<span class="separator'
  return phonetics#text#common#Scrap(regex, a:word)
endfunction
