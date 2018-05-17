fun! phonetics#audio#common#EchoAndPlay(accent)
  let l:word = phonetics#core#GetWord()
  let l:accent = phonetics#core#GetAccent(a:accent)

  try
    let [l:transcription, l:audio_url] = phonetics#core#Scrap(l:accent, 'audio', l:word)
    call system('mpv ' . l:audio_url)
  cat 'phonetics-not-found'
    exe 'echom "[' . toupper(l:accent) . '] Phonetics of \"' . l:word . '\" not found."'
  endt
endf

fun! phonetics#audio#common#Scrap(regex, word)
  let l:html = phonetics#core#GetHTML(a:word)

  try
    let [l:match, l:transcription, l:audio_url; l:rest] = matchlist(l:html, a:regex)
    return [l:transcription, l:audio_url]
  catch
    return []
  endt
endf

