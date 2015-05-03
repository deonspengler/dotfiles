" set encoding type
set encoding=utf-8

" be iMproved
set nocompatible

"install vundle with the following command
"git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

" required for Vundle
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" plugins to install and manage
Plugin 'gmarik/Vundle.vim'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'bling/vim-airline'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdcommenter'
Plugin 'nanotech/jellybeans.vim'
Plugin 'reedes/vim-colors-pencil'
call vundle#end()

" set color scheme
set t_Co=256
colorschem jellybeans

" allows buffers to be hidden if modified
set hidden

" enable syntax highlighting
filetype plugin indent on
syntax on

" spell checking
imap <F5> <C-o>:setlocal spell! spelllang=en_us<CR>
autocmd FileType mail set spell spelllang=en_us
autocmd FileType text set spell spelllang=en_us

" setup builtin encryption
set nobackup
set noswapfile
set nowritebackup
set viminfo=
set cm=blowfish

" show line numbers
set number

" toggle line numbers
nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>

"set pastetoggle=<F4>
nnoremap <F4> :set nopaste!<CR>

" set tab options
set tabstop=4
set shiftwidth=4
set softtabstop=4
set shiftround
set expandtab

" set search options
set hlsearch
set incsearch
set ignorecase
set smartcase

" easier moving of code block indentation
vnoremap < <gv
vnoremap > >gv

" rebind <leader> key
let mapleader=","

" map sort function to a key
vnoremap <leader>s :sort<CR>

" YouCompleteMe
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_key_list_select_completion=[]
let g:ycm_key_list_previous_completion=[]

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

" 80 column layout for python
autocmd FileType python set colorcolumn=80

" set color for printing
command Hardcopy call Hardcopy()
function! Hardcopy()
  let colors_save = g:colors_name
  colorscheme default
  hardcopy
  execute 'colorscheme' colors_save
endfun
