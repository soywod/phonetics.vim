function! phonetics#text#american#Scrap(word)
  let regex = '<div class="phons_n_am".\{-}<span class="phon">\(/.\{-}/\)<\/span>'
  return phonetics#text#common#Scrap(regex, a:word)
endfunction
