if exists('g:loaded_phonetics_plugin')
  finish
endif
let g:loaded_phonetics_plugin = 1

com! -nargs=? Phonetics call phonetics#text#common#Echo(<q-args>)
com! -nargs=? PhoneticsPlay call phonetics#audio#common#EchoAndPlay(<q-args>)

