set nocompatible              " be iMproved, required

set t_Co=256  " make use of 256 terminal colors
syntax on
set statusline=%F%m%r%h%w[%L][%{&ff}]%y[%p%%][%04l,%04v]
set laststatus=2
if v:version > 703
set number relativenumber
endif

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
inoremap jk 

" plugin stuff all goes after here
if v:version < 703
  finish
endif

" ale settings
let g:ale_linters = {'cpp': ['clangd']}
" let g:ale_cpp_clangd_options = '-std=c++17 -Wall'

let g:ale_sign_column_always = 1
let g:ale_change_sign_column_color = 1
highlight link ALESignColumnWithErrors    Comment
highlight link ALESignColumnWithoutErrors Comment
highlight link ALEError ErrorMsg

let g:ale_completion_enabled = 0
set completeopt=menu,menuone,preview,noselect,noinsert

call plug#begin('~/.vim/plugged')
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
" Plug '/usr/local/opt/fzf'
" Plug 'junegunn/fzf.vim'
" Plug 'dylanaraps/wal.vim'
" Plug 'w0rp/ale'
Plug 'digitaltoad/vim-pug'
" Plug 'fsharp/vim-fsharp', {
" \ 'for': 'fsharp',
" \ 'do':  'make fsautocomplete',
" \}
call plug#end()


" appearance
" colorscheme wal

" keybindings
nnoremap <C-o> :GFiles 
nnoremap § :Rg! 

" search
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview({'options': '--delimiter : --nth 4..'}, 'up:60%')
  \           : fzf#vim#with_preview({'options': '--delimiter : --nth 4..'}, 'right:50%:hidden', '?'),
  \   <bang>0)
