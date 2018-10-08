set nocompatible              " be iMproved, required


set t_Co=256  " make use of 256 terminal colors
set background=light
color github
syntax on

set     autoindent
autocmd FileType *        set tabstop=2|set shiftwidth=2|set noexpandtab
autocmd FileType python   set tabstop=4|set shiftwidth=4| set expandtab
autocmd FileType pandoc   set tabstop=4|set shiftwidth=4
autocmd FileType markdown set tabstop=2|set shiftwidth=2|set expandtab
autocmd FileType tsv      set tabstop=20|set nowrap|set listchars=eol:\ ,tab:»-,trail:·,precedes:…,extends:…,nbsp:‗|set list|set number

set lazyredraw          " redraw only when we need to.

set showmatch           " highlight matching [{()}]

set incsearch           " search as characters are entered
set hlsearch            " highlight matches

set backspace=indent,eol,start
set statusline=%F%m%r%h%w[%L][%{&ff}]%y[%p%%][%04l,%04v]
set laststatus=2
