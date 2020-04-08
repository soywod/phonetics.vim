function! phonetics#text#british#Scrap(word)
  let regex = '<div class="phons_br".\{-}<span class="phon">\(/.\{-}/\)<\/span>'
  return phonetics#text#common#Scrap(regex, a:word)
endfunction
