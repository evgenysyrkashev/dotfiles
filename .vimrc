set nocompatible

filetype off
"filetype indent on
"filetype plugin on

syntax enable

set omnifunc=syntaxcomplete#Complite

" Search improvements
set incsearch
set ignorecase
set hlsearch
set autoindent
set fileencoding=utf-8
set encoding=utf-8
set backspace=indent,eol,start
set ts=2 sts=2 sw=2 expandtab

" Set automatic window resizing
set winwidth=84
set winheight=5
set winminheight=5
set winheight=999

set number
set list
set listchars=tab:▸\ ,eol:¬
set noswapfile
set visualbell
set cursorline

set colorcolumn=80
set t_Co=256

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmaric/vundle'

" NERDTree. Better file browser
Bundle 'scrooloose/nerdtree'
" NERDCommenter
Bundle 'scroloose/nerdcommenter'
" Vim-ruby
Bundle 'vim-ruby/vim-ruby'
" Surround
Bundle 'tpope/vim-surround'
" Error checker
Bundle 'scrooloose/syntastic'
" Fuzzy search ctrlp.vim
Bundle 'kien/ctrlp.vim'
" Tagbar
Bundle 'majutsushi/tagbar'
" Emmet
Bundle 'mattn/emmet-vim'
" Autocomplite
Bundle 'Valloric/YouCompleteMe'
" HTML tags highlighting
Bundle 'Valloric/MatchTagAlways'
" Vim airline
Bundle 'bling/vim-airline'
" Git wrapper
Bundle 'tpope/vim-fugitive'
" Easy Grep. Search in project
Bundle 'vim-scripts/EasyGrep'
" jsHint2
Bundle 'Shutnik/jshint2.vim'
" UltiSnips
Bundle 'SirVer/ultisnips'
" Multiple cursors
Bundle 'terryma/vim-multiple-cursors'
" Javasript syntax highlighting
Bundle 'jelera/vim-javascript-syntax'
" CoffeeScript support for vim
Bundle 'kchmck/vim-coffee-script'

" CoffeeScript settings
"syntax enable
filetype plugin indent on

" Javascript folding
"au FileType javascript call JavaScriptFold()

" Remap UltiSnips
let g:UltiSnipsExpandTrigger='<c-j>'
let g:UltiSnipsJumpForwardTrigger='<c-j>'
let g:UltiSnipsJumpBackwardTrigger='<c-k>'

" Vim airline settings
let g:airline_left_sep = '⮀'
let g:airline_left_alt_sep = '⮁'
let g:airline_right_sep = '⮂'
let g:airline_right_alt_sep = '⮃'
let g:airline_fugitive_prefix = '⎇  '
let g:airline_readonly_symbol = '⭤'
" let g:airline_linecolumn_prefix = '⭡'

" jsHint2 settings
let jshint2_read = 1
let jshint2_save = 1

set laststatus=2
"set textwidth=80
"let g:solarized_termcolors=256
" set colorcolumn=+1
filetype plugin indent on

let g:rehash256 = 1
let g:molokai_original = 1
colorscheme molokai

" Toogle NERDTree
map <F4> :NERDTreeToggle<CR>
