if exists('g:loaded_phonetics_plugin') | finish | endif
let g:loaded_phonetics_plugin = 1

command! -nargs=? Phonetics     call phonetics#text#common#Echo(<q-args>)
command! -nargs=? PhoneticsPlay call phonetics#audio#common#EchoAndPlay(<q-args>)
