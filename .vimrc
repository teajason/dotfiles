"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"          _                       
"  __   __(_) _ __ ___   _ __  ___ 
"  \ \ / /| || '_ ` _ \ | '__|/ __|
"  _\ V / | || | | | | || |  | (__ 
" (_)\_/  |_||_| |_| |_||_|   \___|
"                                  
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Vundle Preamble{{{
set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" }}}

" Vundle Plugins {{{
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" Easy motion!
Plugin 'easymotion/vim-easymotion'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'morhetz/gruvbox'
Plugin 'justinmk/vim-syntax-extra'
Plugin 'tpope/vim-fugitive'
Plugin 'nikvdp/ejs-syntax'
"}}}
"Vundle Postamble{{{

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"}}}
set encoding=utf-8
set number
set tabstop=4 shiftwidth=4 softtabstop=4 expandtab
set listchars=tab:▸\ ,eol:¬,extends:❯,precedes:❮,trail:·,nbsp:‿ " show these hidden characters
set list

"colors
syntax enable
set background=dark
colorscheme gruvbox
"let g:gruvbox_contrast_dark = "soft"

let mapleader="\<Space>" " leader is space
nnoremap <leader>m :silent make\|redraw!\|cw<CR>
nnoremap <leader>mc :silent make clean\|redraw!\|cw<CR>
nnoremap <leader>mr :silent make realclean\|redraw!\|cw<CR>
nnoremap <leader>n :nohlsearch<CR>

" start with NERDTree open if no files are specified
autocmd vimenter * if !argc() | NERDTree | endif

" exit Vim if a NERDTree is the last buffer
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
