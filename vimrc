syntax on 
set t_Co=256  " make use of 256 terminal colors 
color summerfruit256

" enable filetype detection:
filetype on
filetype plugin on
filetype indent on " file type based indentation

set autoindent
set tabstop=2
set shiftwidth=2
set expandtab
autocmd FileType make set noexpandtab

set lazyredraw          " redraw only when we need to.
set showmatch           " highlight matching [{()}]

set incsearch           " search as characters are entered
set hlsearch            " highlight matches

"map <C-K> :pyf /usr/share/clang/clang-format.py<cr>
"imap <C-K> <c-o>:pyf /usr/share/clang/clang-format.py<cr>
"map <C-K> :!clang-format -i %<cr>
