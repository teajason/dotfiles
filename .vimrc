set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

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

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set encoding=utf-8

set number
set tabstop=2 shiftwidth=2 softtabstop=2 expandtab

"colors
syntax enable
set background=dark
colorscheme gruvbox
"let g:gruvbox_contrast_dark = "soft"

"hi Visual gui=NONE guibg=White guifg=Black

" Syntastic settings for project specific syntax highlighting
"
let g:syntastic_java_javac_config_file_enabled = 1

let mapleader="\<Space>" " leader is space
nnoremap <leader>m :silent make\|redraw!\|cw<CR>
nnoremap <leader>mc :silent make clean\|redraw!\|cw<CR>
nnoremap <leader>mr :silent make realclean\|redraw!\|cw<CR>
nnoremap <leader><space> :nohlsearch<CR>

" start with NERDTree open if no files are specified
autocmd vimenter * if !argc() | NERDTree | endif

" exit Vim if a NERDTree is the last buffer
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
