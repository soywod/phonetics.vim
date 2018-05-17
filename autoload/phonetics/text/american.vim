function! phonetics#text#american#Scrap(word)
  let l:regex = 'NAmE.\{-}separator">\/<\/span>\(.\{-}\)<span class="separator'
  return phonetics#text#common#Scrap(l:regex, a:word)
endfunction

