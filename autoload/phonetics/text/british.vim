function! phonetics#text#british#Scrap(word)
  let l:regex = 'BrE.\{-}separator">\/<\/span>\(.\{-}\)<span class="separator'
  return phonetics#text#common#Scrap(l:regex, a:word)
endfunction

