set encoding=utf-8
set undolevels=1000
"highlight all the matches in search
set hlsearch

syntax on

set number

autocmd User Rails let b:surround_{char2nr('-')} = "<% \r %>" " displays <% %> correctly
:set cpoptions+=$ " puts a $ marker for the end of words/lines in cw/c$ commands

"improve autocomplete menu color
highlight Pmenu ctermbg=238 gui=bold

"Indent Settings
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent

" Highlight Whitespaces
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()
map <leader>ctw :%s/\s\+$//<CR>

set nocompatible              " be iMproved, required
filetype off                  " required


"Mapping keys
:command Fws FixWhitespace

"VUNDLE"

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo

Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'bling/vim-airline'
Plugin 'mileszs/ack.vim'
Plugin 'ggreer/the_silver_searcher.vim'
Plugin 'szw/vim-maximizer'
Plugin 'DataWraith/auto_mkdir.git'
Plugin 'scrooloose/syntastic.git' "syntax erros highlight. All languages
Plugin 'tpope/vim-endwise.git' "auto completes end after def, do etc.
Plugin 'tpope/vim-fugitive.git' "Git inside vim
Plugin 'tpope/vim-surround.git' "Handle surround - things around anything.
Plugin 'bronson/vim-trailing-whitespace.git'

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

colorscheme molokai
let g:molokai_original = 1
let g:rehash256 = 1

set fillchars+=vert:\|

" enable mouse's scroll
set mouse=a

" details for vertical split
hi vertsplit guifg=fg guibg=bg


"NERDtre always open
autocmd VimEnter * NERDTree
autocmd BufEnter * NERDTreeMirror


"Highlight coluns
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

set colorcolumn=81

"Silver searcher
let g:ackprg = 'ag --nogroup --nocolor --column'
