function! phonetics#text#british#Scrap(word)
  let l:regex = 'BrE<\/span><span class="separator">\/<\/span><span class="wrap">\/<\/span>\(.\{-}\)<'
  return phonetics#text#common#Scrap(l:regex, a:word)
endfunction

