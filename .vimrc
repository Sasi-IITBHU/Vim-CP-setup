filetype off
set shellslash
set rtp+=~/vimfiles/bundle/Vundle.vim
call vundle#begin('~/vimfiles/bundle')
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'morhetz/gruvbox'
Plugin 'joshdick/onedark.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'bfrg/vim-cpp-modern'
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
" --------------------------------------------------------------------------------------------

source $VIMRUNTIME/defaults.vim

set guifont=JetBrains_Mono:h12
set termguicolors
colo solarized
set background=light
let g:solarized_termcolors=256

" Set relative number.
set nu
augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave * set rnu
    autocmd BufLeave,FocusLost,InsertEnter * set nornu
augroup END


"Place your template in this directory ~/vimfiles/templates/skeleton.cpp file
:autocmd BufNewFile *.cpp 0r ~/vimfiles/templates/skeleton.cpp

set incsearch
set tabstop =4
set shiftwidth =4
set nofoldenable
set clipboard=unnamed
set belloff=all

imap jj <Esc>

"My default working directory.
cd E:\main

map <C-c> :s/^/\/\//<Enter>
map <C-u> :s/^\/\///<Enter>


"--------------BULID COMMANDS----------------------
"For windows.
autocmd filetype cpp nnoremap <C-b> :w <bar> !g++ -std=c++17 % -o %:r -Wl,--stack,268435456<CR>
autocmd filetype cpp nnoremap <F9> :!%:r<CR>


" Disable all blinking:
:set guicursor+=a:blinkon0

:set guioptions-=m  "remove menu bar
:set guioptions-=T  "remove toolbar
:set guioptions-=r  "remove right-hand scroll bar
:set guioptions-=L  "remove left-hand scroll bar
