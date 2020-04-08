function! phonetics#audio#american#Scrap(word)
  let regex = '<div class="phons_n_am".\{-}mp3="\(.\{-}\)".\{-}<span class="phon">\(/.\{-}/\)<\/span>'
  return phonetics#audio#common#Scrap(regex, a:word)
endfunction
