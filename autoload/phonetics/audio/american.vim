function! phonetics#audio#american#Scrap(word)
  let l:regex = 'NAmE.\{-}separator">\/<\/span>\(.\{-}\)<span class="separator.\{-}mp3="\(.\{-}\)"'
  return phonetics#audio#common#Scrap(l:regex, a:word)
endfunction

