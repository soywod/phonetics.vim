function! phonetics#text#american#Scrap(word)
  let regex = 'NAmE.\{-}separator">\/<\/span>\(.\{-}\)<span class="separator'
  return phonetics#text#common#Scrap(regex, a:word)
endfunction
