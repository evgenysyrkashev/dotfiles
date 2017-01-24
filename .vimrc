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
set spell spelllang=en_us

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
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-surround'
Plug 'scrooloose/syntastic'
Plug 'majutsushi/tagbar'
Plug 'Valloric/YouCompleteMe', {'do': './install.py --all'}
Plug 'vim-airline/vim-airline'
Plug 'sheerun/vim-polyglot'
Plug 'pangloss/vim-javascript'
Plug 'moll/vim-node'
Plug 'nikvdp/ejs-syntax'
Plug 'chriskempson/base16-vim'
Plug 'nazo/pt.vim'  " brew install pt
Plug 'maksimr/vim-jsbeautify'
Plug 'editorconfig/editorconfig-vim'
Plug 'mattn/emmet-vim'
Plug 'SirVer/ultisnips'
Plug 'terryma/vim-multiple-cursors'
Plug 'ntpeters/vim-better-whitespace'
Plug 'ternjs/tern_for_vim', {'do': 'npm install'}
Plug 'easymotion/vim-easymotion'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'Quramy/tsuquyomi'
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'wincent/command-t', {
    \   'do': 'cd ruby/command-t && ruby extconf.rb && make'
    \ }
call plug#end()
filetype plugin indent on

" Close autocompletion tip window when a selection is made
autocmd CompleteDone * pclose

" NERDTree config
let g:NERDTreeShowHidden=1    " show dotfiles

" Command-T config
let g:CommandTWildIgnore=&wildignore . ",**/node_modules"
let g:CommandTWildIgnore=&wildignore . ",**/bower_components"

" YCM typescript autocopletion
if !exists("g:ycm_semantic_triggers")
  let g:ycm_semantic_triggers = {}
endif
let g:ycm_semantic_triggers['typescript'] = ['.']

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_loc_list_height = 5
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exec = 'eslint_d'   " npm install -g eslint_d
let g:tsuquyomi_disable_quickfix = 1
let g:syntastic_typescript_checkers = ['tsuquyomi']

let g:syntastic_html_tidy_ignore_errors = [
    \ "proprietary attribute",
    \ "trimming empty <",
    \ "unescaped &",
    \ "lacks \"action",
    \ "is not recognized!",
    \ "discarding unexpected"
    \ ]

" Javascript folding
"au FileType javascript call JavaScriptFold()

" Remap UltiSnips
let g:UltiSnipsExpandTrigger='<C-j>'
let g:UltiSnipsJumpForwardTrigger='<C-j>'
let g:UltiSnipsJumpBackwardTrigger='<C-k>'

let g:airline_powerline_fonts = 1

let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }

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
