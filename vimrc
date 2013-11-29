" .vimrc
" Configuration file for the VIM editor
" kafka
" many ideas taken from http://www.derekwyatt.org

""" general look and feel
"   256 colours
"   colorscheme

set t_Co=256
"colorscheme inkpot

""" useful defaults
"   use vim, not vi
"   show line numbers
"   use smart indentation
"   continue indenting on next line
"   tabs are 4 spaces wide
"   indent 4
"   use space, no tabs
"   backspace everywhere
"   show matches (brackets, etc.)
"   highlight search
"   show matches while typing
"   use a large history
"   use many undo levels
"   ignore unusable files
"   no beep
"   no beep, again

"   use vundle
"   show syntax
"   enable filetype plugin indent

set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle
call vundle#rc()

Bundle 'gmarik/vundle'

" Bundles

Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/nerdtree'
Bundle 'kien/rainbow_parentheses.vim'
Bundle 'majutsushi/tagbar'
Bundle 'SuperTab'

set number
set smartindent
set copyindent
set tabstop=4
set shiftwidth=4
set expandtab
set backspace=indent,eol,start
set showmatch
set hlsearch
set incsearch
set history=1000
set undolevels=1000
set wildignore=*.swp,*.pyc
set visualbell
set noerrorbells

syntax on
filetype plugin indent on

""" user interaction
"   don't use arrow keys

map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" rainbow_parentheses settings
" always on
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
