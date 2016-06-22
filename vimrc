set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'Chiel92/vim-autoformat'
let g:formatdef_clangformat = "'clang-format -style=LLVM'"
noremap  :Autoformat<CR>

Plugin 'octol/vim-cpp-enhanced-highlight'

Plugin 'luochen1990/rainbow'
let g:rainbow_active = 1 " 0 if you want to enable it later via :RainbowToggle
let g:rainbow_conf = {
			\ 'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
			\ 'ctermfgs': ['darkmagenta', 'darkgreen', 'darkgrey', 'darkblue'],
			\ 'operators': '_,_',
			\ 'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
			\ 'separately': {
			\   '*': {},
			\   'tex': {
			\     'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
			\   },
			\   'lisp': {
			\     'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
			\   },
			\   'vim': {
			\     'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
			\   },
			\   'html': {
			\     'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
			\   },
			\   'css': 0,
			\ }
			\}

Plugin 'flazz/vim-colorschemes'

Plugin 'jiangmiao/auto-pairs'

Plugin 'junegunn/vim-easy-align'
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

if v:version >= 704
Plugin 'vim-pandoc/vim-pandoc'
Plugin 'vim-pandoc/vim-pandoc-syntax'
endif

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
au VimEnter * exec 'AirlineTheme papercolor'
set laststatus=2
set ttimeoutlen=50

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

set t_Co=256  " make use of 256 terminal colors
set background=light
color github
syntax on

set     autoindent
autocmd FileType *        set tabstop=2|set shiftwidth=2|set noexpandtab
autocmd FileType python   set tabstop=4|set shiftwidth=4| set expandtab
autocmd FileType pandoc   set tabstop=4|set shiftwidth=4
autocmd FileType markdown set tabstop=4|set shiftwidth=4

set lazyredraw          " redraw only when we need to.
set showmatch           " highlight matching [{()}]

set incsearch           " search as characters are entered
set hlsearch            " highlight matches

set backspace=indent,eol,start
