function! phonetics#audio#british#Scrap(word)
  let regex = '<div class="phons_br".\{-}mp3="\(.\{-}\)".\{-}<span class="phon">\(/.\{-}/\)<\/span>'
  return phonetics#audio#common#Scrap(regex, a:word)
endfunction
