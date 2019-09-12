" set encoding type
set encoding=utf-8

" vim-plug automatic installationx
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" plugins to install and manage
call plug#begin('~/.vim/plugged')
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'maralla/completor.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'nanotech/jellybeans.vim'
Plug 'rakr/vim-one'
call plug#end()

" be iMproved
set nocompatible

" allows buffers to be hidden if modified
set hidden

" enable syntax highlighting
filetype plugin indent on
syntax on

" 80 column layout for python
autocmd FileType python set colorcolumn=80

" spell checking
map <F5> :setlocal spell! spelllang=en_us<CR>
autocmd FileType mail set spell spelllang=en_us
autocmd FileType text set spell spelllang=en_us

" setup builtin encryption
set nobackup
set noswapfile
set nowritebackup
set cm=blowfish

" show line numbers
set number

" toggle line numbers
nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>

" set preview window at the bottom
set splitbelow

" bindings for switch panes
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

"set pastetoggle=<F4>
nnoremap <F4> :set nopaste!<CR>

" set tab options
set tabstop=4
set shiftwidth=4
set softtabstop=4
set shiftround
set expandtab

" for html set tabstop and shiftwidth to 2 spaces
autocmd Filetype html setlocal ts=2 sw=2 expandtab
autocmd Filetype htmldjango setlocal ts=2 sw=2 expandtab

" set search options
set hlsearch
set incsearch
set ignorecase
set smartcase

" rebind <leader> key
let mapleader=";"

" map sort function to a key
vnoremap <leader>s :sort<CR>

" easier buffer navigation
map ;n :bn<cr>
map ;p :bp<cr>
map ;d :bd<cr>

" easier moving of code block indentation
vnoremap < <gv
vnoremap > >gv

" airline
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_tab_type = 0
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#show_close_button = 0
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#buffer_min_count = 2

" UltiSnips
let g:UltiSnipsExpandTrigger="<C-j>"

" set color scheme
set t_Co=256
colorschem jellybeans

" set color for printing
command Hardcopy call Hardcopy()
function! Hardcopy()
  let colors_save = g:colors_name
  colorscheme one
  hardcopy
  execute 'colorscheme' colors_save
endfun
