function! phonetics#audio#common#EchoAndPlay(accent)
  try
    let [l:transcription, l:audio_url] = phonetics#core#Scrap(a:accent, 'audio')
    call system('mpv ' . shellescape(l:audio_url))
  catch 'phonetics-not-found'
    call phonetics#core#ErrorMsg('Phonetics not found.')
  catch 'invalid-accent'
    call phonetics#core#ErrorMsg('Invalid accent.')
  endtry
endfunction

function! phonetics#audio#common#Scrap(regex, word)
  let l:html = phonetics#core#GetHTML(a:word)

  try
    let [l:match, l:transcription, l:audio_url; l:rest] = matchlist(l:html, a:regex)	
    return [l:transcription, l:audio_url]
  catch
    return []
  endtry
endfunction

