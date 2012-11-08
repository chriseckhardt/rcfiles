filetype off
call pathogen#runtime_append_all_bundles()
filetype plugin indent on
set nocompatible
set modelines=0
set bg=dark
set visualbell t_vb=
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set encoding=utf-8
set scrolloff=3
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set nu
set wrap
set list
set listchars=tab:>-,trail:-,eol:-
set statusline=%{fugitive#statusline()}\ %F   "Git branch info
set statusline +=%1*%=%5l%*                   "current line
set fileformat=unix
