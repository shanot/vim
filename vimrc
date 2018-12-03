set nocompatible              " be iMproved, required

call plug#begin('~/.vim/plugged')
Plug 'pangloss/vim-javascript'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
call plug#end()

set t_Co=256  " make use of 256 terminal colors
syntax on
set statusline=%F%m%r%h%w[%L][%{&ff}]%y[%p%%][%04l,%04v]
set laststatus=2
set number relativenumber

" filetype pluggin
filetype plugin on

set     autoindent
autocmd FileType *        set tabstop=2|set shiftwidth=2|set noexpandtab

set lazyredraw          " redraw only when we need to.
set backspace=indent,eol,start

" braces
" autocomplete braces
inoremap "" ""<left>
inoremap '' ''<left>
inoremap (( ()<left>
inoremap [[ []<left>
inoremap {{ {}<left>
inoremap {{<CR> {<CR>}<ESC>O
inoremap {{;<CR> {<CR>};<ESC>O
set showmatch           " highlight matching [{()}]

" search
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview({'options': '--delimiter : --nth 4..'}, 'up:60%')
  \           : fzf#vim#with_preview({'options': '--delimiter : --nth 4..'}, 'right:50%:hidden', '?'),
  \   <bang>0)

" general keybinds
nnoremap ; :
nnoremap <C-o> :GFiles 
nnoremap § :Rg! 
