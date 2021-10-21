filetype off
set shellslash
set rtp+=~/vimfiles/bundle/Vundle.vim
call vundle#begin('~/vimfiles/bundle')
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'morhetz/gruvbox'
Plugin 'joshdick/onedark.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
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

"set guifont=JetBrains_Mono:h12
set guifont=Consolas:h13
"set guifont=Ubuntu_Mono_derivative_Powerlin:h14
set termguicolors
colo gruvbox
let g:gruvbox_contrast_dark='soft'
set background=dark
set t_md=
set noswapfile
"let g:solarized_termcolors=256

let mapleader=" "
nnoremap <leader>n :NERDTreeToggle<CR>
"nnoremap <C-n> :NERDTree<CR>
"nnoremap <leader>f :NERDTreeFind<CR>
nnoremap <leader>c :NERDTreeClose<CR>

nnoremap <leader>y ggyG


"navigating splits
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-l> <C-w><C-l>
nnoremap <C-h> <C-w><C-h>

" Go to tab by number
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt


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
autocmd filetype cpp nnoremap <leader>b :w <bar> !g++ -std=c++17 % -o %:r -Wl,--stack,268435456<CR>
autocmd filetype cpp nnoremap <F9> :!%:r<CR>


" Disable all blinking:
:set guicursor+=a:blinkon0

"Make cursor to underscore in insert mode
":set guicursor+=i:hor20-Cursor

:set guioptions-=m  "remove menu bar
:set guioptions-=T  "remove toolbar
:set guioptions-=r  "remove right-hand scroll bar
:set guioptions-=L  "remove left-hand scroll bar
