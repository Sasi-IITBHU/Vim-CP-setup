filetype off
set shellslash
set rtp+=~/vimfiles/bundle/Vundle.vim
call vundle#begin('~/vimfiles/bundle')
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'morhetz/gruvbox'
Plugin 'joshdick/onedark.vim'
Plugin 'altercation/vim-colors-solarized'
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
" -----------------------------NON-PLUGIN STUFF BEGINS-----------------------------------------

:autocmd BufNewFile *.cpp 0r ~/.vim/templates/skeleton.cpp	"template file goes here.

source $VIMRUNTIME/defaults.vim
colo gruvbox
set guifont=Consolas:h12
"let g:airline_theme='onedark'
set background=dark
"set nowrap
set nu
augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave * set rnu
    autocmd BufLeave,FocusLost,InsertEnter * set nornu
augroup END
set incsearch
set tabstop =4
set shiftwidth =4
set nofoldenable
set clipboard=unnamed
set belloff=all
cd E:\Compete	"Default working directory.
imap jj <Esc>
map <C-c> :s/^/\/\//<Enter>
map <C-u> :s/^\/\///<Enter>

"--------------BULID COMMANDS----------------------
autocmd filetype cpp nnoremap <C-b> :w <bar> !g++ -std=c++17 % -o %:r -Wl,--stack,268435456<CR>
autocmd filetype cpp nnoremap <F9> :!%:r<CR>

:set guioptions-=m  "remove menu bar
:set guioptions-=T  "remove toolbar
:set guioptions-=r  "remove right-hand scroll bar
:set guioptions-=L  "remove left-hand scroll bar
