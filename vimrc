set nocompatible              " be iMproved, required

set t_Co=256  " make use of 256 terminal colors
syntax on
set statusline=%F%m%r%h%w[%L][%{&ff}]%y[%p%%][%04l,%04v]
set laststatus=2
if v:version > 703
set number relativenumber
endif

" colorscheme github

" filetype pluggin
filetype plugin on

set     autoindent
autocmd FileType *        set tabstop=2|set shiftwidth=2|set noexpandtab

set lazyredraw          " redraw only when we need to.
set backspace=indent,eol,start

" braces
"" autocomplete braces
"if v:version > 703
"	inoremap "" ""<left>
"	inoremap '' ''<left>
"	inoremap (( ()<left>
"	inoremap [[ []<left>
"	inoremap {{ {}<left>
"	inoremap {{<CR> {<CR>}<ESC>O
"	inoremap {{;<CR> {<CR>};<ESC>O
"endif
set showmatch           " highlight matching [{()}]

" search
set incsearch           " search as characters are entered
set hlsearch            " highlight matches

" keybindings
nnoremap ; :
nnoremap : ;
vnoremap ; :
vnoremap : ;

" plugin stuff all goes after here
if v:version < 703
  finish
endif

set rtp+=/usr/local/opt/fzf
call plug#begin('~/.vim/plugged')
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'digitaltoad/vim-pug'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
call plug#end()


nnoremap <C-o> :GFiles <CR>
nnoremap <C-f> :Rg <CR>

set tags=./tags
