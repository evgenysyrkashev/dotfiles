set shell=/bin/bash
set nocompatible
set clipboard=unnamed

filetype off
syntax enable

let mapleader=","

" set omnifunc=syntaxcomplete"Complite

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
" set winwidth=84
" set winheight=5
" set winminheight=5
" set winheight=999

set number
set list
set listchars=tab:▸\ ,eol:¬
set directory=$HOME/.vim/swapfiles//
set backupdir=$HOME/.vim/backup//
set visualbell
set cursorline

set colorcolumn=80
"set t_Co=256

call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-surround'
Plug 'scrooloose/syntastic'
Plug 'majutsushi/tagbar'
Plug 'Valloric/YouCompleteMe', {'do': './install.py --all'}
Plug 'vim-airline/vim-airline'
Plug 'sheerun/vim-polyglot'
Plug 'pangloss/vim-javascript'
Plug 'nikvdp/ejs-syntax'
Plug 'chriskempson/base16-vim'
Plug 'wincent/command-t', {
    \   'do': 'cd ruby/command-t && ruby extconf.rb && make'
    \ }
call plug#end()
filetype plugin indent on

" NERDTree config
let g:NERDTreeShowHidden=1    " show dotfiles

" Command-T config
let g:CommandTWildIgnore=&wildignore . ",**/node_modules"
let g:CommandTWildIgnore=&wildignore . ",**/bower_components"

" Syntastic
" set statusline+=%"warningmsg"
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Javascript folding
"au FileType javascript call JavaScriptFold()

" Remap UltiSnips
" let g:UltiSnipsExpandTrigger='<c-j>'
" let g:UltiSnipsJumpForwardTrigger='<c-j>'
" let g:UltiSnipsJumpBackwardTrigger='<c-k>'

" Vim airline settings
" let g:airline_left_sep = '⮀'
" let g:airline_left_alt_sep = '⮁'
" let g:airline_right_sep = '⮂'
" let g:airline_right_alt_sep = '⮃'
" let g:airline_fugitive_prefix = '⎇  '
" let g:airline_readonly_symbol = '⭤'
" let g:airline_linecolumn_prefix = '⭡'

set laststatus=2
"set textwidth=80
"let g:solarized_termcolors=256
" set colorcolumn=+1

"let g:rehash256 = 1
"let g:solarized_termtrans=1
"let g:solarized_termcolors=256
set background=dark
let base16colorspace=256
colorscheme base16-solarized-dark

" Toogle NERDTree
map <F4> :NERDTreeToggle<CR>
