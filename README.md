# Phonetics.vim

A Vim plugin for:
 - 📖 Checking phonetics
 - 🎧 Listening to phonetics

<p align="center">
<img width="607" src="https://user-images.githubusercontent.com/10437171/45259164-32160300-b3c6-11e8-8cb2-48f448163391.gif"></img>
</p>

## Introduction

Vim Phonetics is a vim plugin that gives you English phonetic transcriptions of
focused words.  You can choose between British English and American English.
You can also listen to audio associated to transcriptions.

The phonetics (transcription and audio) comes from [Oxford Learner's
Dictionnaries](https://www.oxfordlearnersdictionaries.com/).

## Prerequisites

 - [cURL](https://curl.haxx.se/) to retrieve audios and phonetics
 - [mpv](https://mpv.io/) to play audios

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
