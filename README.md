# Vim-CP-setup
## my vimrc (for windows GVIM version).
## Installation (Windows)

_make sure **Git** is installed_
[download it from here](https://git-scm.com/ "Git")

Once git is installed, open **git-bash** and run 

```bash
git clone https://github.com/VundleVim/Vundle.vim.git ~/vimfiles/bundle/Vundle.vim
```

Add the following lines to the begining of your **~\.vimrc** or **\_vimrc**

```vim
filetype off
set shellslash
set rtp+=~/vimfiles/bundle/Vundle.vim
call vundle#begin('~/vimfiles/bundle')
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

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

```

`
Now you can add all the plugins you wish to have.
Just add them to plugin list. save the file and
do 
`
```vim
:source ~\.vimrc
```

```vim
:PluginInstall
```

>Enjoy!

Reference:
https://github.com/VundleVim/Vundle.vim/wiki/Vundle-for-Windows
