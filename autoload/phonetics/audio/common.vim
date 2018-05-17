fun! phonetics#audio#common#EchoAndPlay(accent)
  try
    let [l:transcription, l:audio_url] = phonetics#core#Scrap(a:accent, 'audio')
    call system('mpv ' . l:audio_url)
  cat 'phonetics-not-found'
    call phonetics#core#ErrorMsg('Phonetics not found.')
  cat 'invalid-accent'
    call phonetics#core#ErrorMsg('Invalid accent.')
  endt
endf

fun! phonetics#audio#common#Scrap(regex, word)
  let l:html = phonetics#core#GetHTML(a:word)

  try
    let [l:match, l:transcription, l:audio_url; l:rest] = matchlist(l:html, a:regex)
    retu [l:transcription, l:audio_url]
  cat
    retu []
  endt
endf

