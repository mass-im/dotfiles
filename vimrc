set nocompatible               " be iMproved
filetype off                   " required!

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Github repos
Bundle 'altercation/vim-colors-solarized'
Bundle 'bling/vim-bufferline'
Bundle 'bling/vim-airline'
Bundle 'vim-airline/vim-airline-themes'
Bundle 'cakebaker/scss-syntax.vim'

filetype plugin indent on " required!

" Solarized settings
set background=dark
colorscheme solarized

" Airline settings
let g:airline_theme='solarized'
let g:airline_solarized_bg='dark'
let g:airline_powerline_fonts=1

" Some defaults
set number
set hidden
set wildmenu	" expand vim commands like :tabe
set hlsearch
set ignorecase	" Use case insensitive search
set smartcase	" , except when using capital letters
set autoindent
" Display the cursor position on the last line of the screen or in the status
" line of a window
set ruler

set nobackup    " no backup file clutter
set noswapfile  " never used it
set nomodeline  " ignore vim modelines

" Always display the status line, even if only one window is displayed
set laststatus=2

" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm

" Enable use of the mouse for all modes
set mouse=a

" Indentation settings for using 4 spaces instead of tabs.
set shiftwidth=4
set softtabstop=4
set expandtab

" Bufferline is also printing to statusline, do not want :F
let g:bufferline_echo = 0

syntax on
