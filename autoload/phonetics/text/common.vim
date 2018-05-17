function! phonetics#text#common#Echo(accent)
  try
    call phonetics#core#Scrap(a:accent, 'text')
  catch 'phonetics-not-found'
    call phonetics#core#ErrorMsg('Phonetics not found.')
  catch 'invalid-accent'
    call phonetics#core#ErrorMsg('Invalid accent.')
  endtry
endfunction

function! phonetics#text#common#Scrap(regex, word)
  let l:html = phonetics#core#GetHTML(a:word)

  try
    let [l:match, l:transcription; l:rest] = matchlist(l:html, a:regex)
    return [l:transcription]
  catch
    return []
  endtry
endfunction

