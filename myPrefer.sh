# copyright by Lucifer
# 2022/Nov
#!/bin/bash

#vim config
echo "vim config..."
alias vi='vim'
mkdir -vp ~/.vim/colors
wget https://raw.githubusercontent.com/altercation/vim-colors-solarized/master/colors/solarized.vim -P ~/.vim/colors/
echo 'colorscheme solarized 
" ##################
" vision
set background=dark
set cursorline
syntax on
if has('termguicolors')
    set termguicolors
endif
" turn relative line numbers on
set relativenumber "rnu
set number "nu

" ##################
" format
" tabs
set tabstop=4
set expandtab " using space instead of tab
" backspace can del 4 spaces if sts == shiftwidth
" sts == shiftwidth can shift back and forth
" higer priority than tabstop
set softtabstop=4
set shiftwidth=4
set si " smartindent
set ai " autoindent
filetype plugin indent on "sensible overwritten
set foldmethod=indent
set nofoldenable
" set backspace=indent,eol,start "sensible overwritten
set wrap

" ##################
" search
" Incremental search, sensible overwritten
" c-l cancel highlight search result
" set incsearch
set hlsearch " highlight search
set ignorecase
set smartcase " mixed cases search=case sensitive

" ##################
" functionality
let g:vim_json_syntax_conceal = 1 
"set encoding=UTF-8 " ryanoasis/vim-devicons may need 
set clipboard=unnamed
set showcmd " Show (partial) command in status line.
set showmatch " Show matching brackets.
set autowrite  " Automatically save before commands like :next and :make
set mouse=a
set mousefocus " focus follow mouse not working
set hidden " Hide buffers when they are abandoned
set nocompatible " Set compatibility to Vim only.

" ##################
" window
set splitright
set splitbelow ' >> ~/.vimrc

# oh-my-zsh
echo "copy personal oh-my-zsh config"
cp .zshrc ~/.zshrc
echo "install zsh-autosuggestions"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
echo "install zsh-syntax-highlighting"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
source ~/.zshrc
