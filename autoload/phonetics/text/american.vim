fun! phonetics#text#american#Scrap(word)
  let l:html = phonetics#core#GetHTML(a:word)
  let l:regex = 'NAmE<\/span><span class="separator">\/<\/span><span class="wrap">\/<\/span>\(.\{-}\)<'
  let [l:match, l:transcription; l:rest] = matchlist(l:html, l:regex)

  return [l:transcription]
endf

