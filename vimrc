set number

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'rakr/vim-one'
Plugin 'henrynewcomer/vim-theme-papaya'

Plugin 'luochen1990/rainbow'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'joshdick/onedark.vim'
Plugin 'nlknguyen/papercolor-theme'
Plugin 'scrooloose/nerdtree'
Plugin 'chriskempson/vim-tomorrow-theme'
Plugin 'altercation/vim-colors-solarized'
Plugin 'yggdroot/indentline'
Plugin 'scrooloose/syntastic'





execute pathogen#infect()
call vundle#end()
syntax on
filetype plugin indent on
:set t_Co=256
set background=dark
set mouse+=a
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O
set ts=4 sw=4
set autoindent
set smartindent
set cindent
set backspace=indent,eol,start
set showcmd
set encoding=utf-8
let g:rainbow_active = 1
colorscheme onedark
"Tomorrow-Night-Eighties

set t_ut=



