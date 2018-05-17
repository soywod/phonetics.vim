fun! phonetics#text#common#Echo(accent)
  try
    call phonetics#core#Scrap(a:accent, 'text')
  cat 'phonetics-not-found'
    call phonetics#core#ErrorMsg('Phonetics not found.')
  cat 'invalid-accent'
    call phonetics#core#ErrorMsg('Invalid accent.')
  endt
endf

fun! phonetics#text#common#Scrap(regex, word)
  let l:html = phonetics#core#GetHTML(a:word)

  try
    let [l:match, l:transcription; l:rest] = matchlist(l:html, a:regex)
    retu [l:transcription]
  cat
    retu []
  endt
endf

