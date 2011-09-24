#!/bin/sh

set -e

test -f ~/.vimrc && mv ~/.vimrc ~/.vimrc.bak

cat <<-VIM > ~/.vimrc
set nocompatible
filetype on
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
"Bundle 'aaronfeng/vim-aaronfeng'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-cucumber'
Bundle 'bbommarito/vim-slim'
Bundle 'mileszs/ack.vim'
Bundle 'vim-scripts/pbcopy.vim'
Bundle 'kchmck/vim-coffee-script'
Bundle 'altercation/vim-colors-solarized'
Bundle 'plasticboy/vim-markdown'
Bundle  'Rubytest.vim'
Bundle 'Simple-Javascript-Indenter'

filetype plugin indent on
VIM

mkdir -p ~/.vim/{bundle,backup}

if ! [[ -d ~/.vim/bundle/vundle ]]; then
    git clone http://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
fi
