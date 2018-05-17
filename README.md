# Vim Phonetics

A Vim plugin for:
 - 📖 Checking phonetics
 - 🎧 Listening to phonetics

<p align="center">
<img  width="615" src="https://user-images.githubusercontent.com/10437171/40181075-890f753e-59e8-11e8-801c-7f8d64514c91.gif"></img>
</p>

## Introduction

Vim Phonetics is a vim plugin that gives you English phonetic transcriptions of focused words.
You can choose between British English and American English.
You can also listen to audio associated to the transcriptions.

The phonetics (transcription and audio) is scraped from [Oxford Learner's Dictionnaries](https://www.oxfordlearnersdictionaries.com/).

## Prerequisites

Vim Phonetics uses [mpv](https://mpv.io/) to play phonetics. It should be installed first. Other players will be integrated in the future.

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
