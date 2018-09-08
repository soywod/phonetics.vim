function! phonetics#audio#british#Scrap(word)
  let regex = 'BrE.\{-}separator">\/<\/span>\(.\{-}\)<span class="separator.\{-}mp3="\(.\{-}\)"'
  return phonetics#audio#common#Scrap(regex, a:word)
endfunction
