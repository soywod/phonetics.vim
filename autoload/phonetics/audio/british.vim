fun! phonetics#audio#british#Scrap(word)
  let l:html = phonetics#core#GetHTML(a:word)
  let l:regex = 'BrE<\/span><span class="separator">\/<\/span><span class="wrap">\/<\/span>\(.\{-}\)<.\{-}mp3="\(.\{-}\)"'
  let [l:match, l:transcription, l:audio_url; l:rest] = matchlist(l:html, l:regex)

  return [l:transcription, l:audio_url]
endf

