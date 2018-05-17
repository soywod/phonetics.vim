fun! phonetics#audio#common#EchoAndPlay(accent)
  let l:word = phonetics#core#GetWord()
  let l:accent = phonetics#core#GetAccent(a:accent)
  let [l:transcription, l:audio_url] = phonetics#core#Scrap(l:accent, 'audio', l:word)

  call system('mpv ' . l:audio_url)
endf

