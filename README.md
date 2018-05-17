# Vim Phonetics

A vim plugin to improve your English phonetics. 

<p align="center">
<img  width="615" src="https://user-images.githubusercontent.com/10437171/40181075-890f753e-59e8-11e8-801c-7f8d64514c91.gif"></img>
</p>

## Introduction

Vim Phonetics is a vim plugin that gives you English phonetic transcriptions of focused words.
You can choose between British English and American English.
You can also listen to audio associated to the transcriptions.

## Installation

```vim
Plug 'soywod/vim-phonetics'
```

## Usage

Put your cursor under a word, then:

 - `:Phonetics` to get the transcription
 - `:PhoneticsPlay` to get the transcription and to play the sound

You can also specify the desired accent:

 - `:Phonetics american` to get the American transcription
 - `:PhoneticsPlay british` to get the British transcription and play the sound

## Configuration

To set a default accent:

```vim
let g:phonetics_default_accent = 'american' | 'british'
```

Default value: `british`
