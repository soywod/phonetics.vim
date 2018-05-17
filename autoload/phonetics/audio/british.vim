function! phonetics#audio#british#Scrap(word)
  let l:regex = 'BrE.\{-}separator">\/<\/span>\(.\{-}\)<span class="separator.\{-}mp3="\(.\{-}\)"'
  return phonetics#audio#common#Scrap(l:regex, a:word)
endfunction

