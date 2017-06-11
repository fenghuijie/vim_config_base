set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

"------------------
" Code Completions
"------------------
Bundle 'Shougo/neocomplcache'
"Bundle 'mattn/emmet-vim'
Bundle 'Raimondi/delimitMate'
Bundle 'ervandew/supertab'
" snippets
Bundle 'garbas/vim-snipmate'
Bundle 'honza/vim-snippets'
"------ snipmate dependencies -------
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'

"-----------------
" Fast navigation
"-----------------
Bundle 'Lokaltog/vim-easymotion'

"--------------
" Fast editing
"--------------
Bundle 'tpope/vim-surround'
Bundle 'scrooloose/nerdcommenter'
Bundle 'sjl/gundo.vim'
Bundle 'godlygeek/tabular'
Bundle 'nathanaelkane/vim-indent-guides'

"--------------
" IDE features
"--------------
Bundle 'scrooloose/nerdtree'
"Bundle 'humiaozuzu/TabBar'
Bundle 'majutsushi/tagbar'
"Bundle 'mileszs/ack.vim'
"Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-powerline'
Bundle 'scrooloose/syntastic'
"Bundle 'bronson/vim-trailing-whitespace'
Bundle 'wesleyche/SrcExpl'
Bundle 'genutils'
Bundle 'lookupfile'

"-------------
" Highlight Keyword
" ------------
Bundle 'mark'

"-------------
" Other Utilities
"-------------
Bundle 'humiaozuzu/fcitx-status'
Bundle 'nvie/vim-togglemouse'

"----------------------------------------
" Syntax/Indent for language enhancement
"----------------------------------------


"--------------
" Color Schemes
"--------------
Bundle 'altercation/vim-colors-solarized'

filetype plugin indent on     " required!
