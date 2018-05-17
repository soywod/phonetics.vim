fun! phonetics#text#british#Scrap(word)
  let l:html = phonetics#core#GetHTML(a:word)
  let l:regex = 'BrE<\/span><span class="separator">\/<\/span><span class="wrap">\/<\/span>\(.\{-}\)<'
  let [l:match, l:transcription; l:rest] = matchlist(l:html, l:regex)

  return [l:transcription]
endf

