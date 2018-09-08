function! phonetics#audio#common#EchoAndPlay(accent)
  try
    let [transcription, audio_url] = phonetics#core#Scrap(a:accent, 'audio')
    call system('mpv ' . shellescape(audio_url))
  catch 'phonetics-not-found'
    call phonetics#core#ErrorMsg('Phonetics not found.')
  catch 'invalid-accent'
    call phonetics#core#ErrorMsg('Invalid accent.')
  endtry
endfunction

function! phonetics#audio#common#Scrap(regex, word)
  let html = phonetics#core#GetHTML(a:word)

  try
    let [match_all, phonetics_raw, audio_url; rest] = matchlist(html, a:regex)	
    return [phonetics_raw, audio_url]
  catch
    return []
  endtry
endfunction
