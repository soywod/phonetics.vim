fun! phonetics#text#common#Echo(accent)
  let l:word = phonetics#core#GetWord()
  let l:accent = phonetics#core#GetAccent(a:accent)

  try
    call phonetics#core#Scrap(l:accent, 'text', l:word)
  cat 'phonetics-not-found'
    exe 'echom "[' . toupper(l:accent) . '] Phonetics of \"' . l:word . '\" not found."'
  endt
endf

fun! phonetics#text#common#Scrap(regex, word)
  let l:html = phonetics#core#GetHTML(a:word)

  try
    let [l:match, l:transcription; l:rest] = matchlist(l:html, a:regex)
    return [l:transcription]
  catch
    return []
  endt
endf

