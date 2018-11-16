set nocompatible              " be iMproved, required


set t_Co=256  " make use of 256 terminal colors
syntax on

set     autoindent
autocmd FileType *        set tabstop=2|set shiftwidth=2|set noexpandtab

set lazyredraw          " redraw only when we need to.

" braces
" autocomplete braces
inoremap " ""<left>
inoremap ' ''<left>
inoremap (( ()<left>
inoremap [[ []<left>
inoremap {{ {}<left>
inoremap {{<CR> {<CR>}<ESC>O
inoremap {{;<CR> {<CR>};<ESC>O
set showmatch           " highlight matching [{()}]

" search
set incsearch           " search as characters are entered
set hlsearch            " highlight matches

set backspace=indent,eol,start
set statusline=%F%m%r%h%w[%L][%{&ff}]%y[%p%%][%04l,%04v]
set laststatus=2
