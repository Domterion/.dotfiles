call plug#begin('~/.local/share/nvim/plugged')

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-crystal/vim-crystal'
Plug 'rust-lang/rust.vim'
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
Plug 'prettier/vim-prettier', { 'do': 'npm install' }
Plug 'cakebaker/scss-syntax.vim'
Plug 'preservim/nerdtree'
Plug 'junegunn/goyo.vim'
Plug 'vbe0201/vimdiscord'

syntax enable
filetype plugin indent on

let g:rustfmt_autosave = 1

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline_theme='minimalist'
let g:deoplete#enable_at_startup = 1
let g:crystal_auto_format = 1
let g:prettier#autoformat = 1

set number
set scrolloff=3

set tabstop=2
set shiftwidth=2
set expandtab

let mapleader=","

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

nnoremap <C-q> :Goyo<CR>

call plug#end()
