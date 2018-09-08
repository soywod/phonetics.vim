function! phonetics#audio#american#Scrap(word)
  let regex = 'NAmE.\{-}separator">\/<\/span>\(.\{-}\)<span class="separator.\{-}mp3="\(.\{-}\)"'
  return phonetics#audio#common#Scrap(regex, a:word)
endfunction
