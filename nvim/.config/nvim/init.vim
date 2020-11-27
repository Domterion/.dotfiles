call plug#begin('~/.local/share/nvim/plugged')

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-crystal/vim-crystal'
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
Plug 'aurieh/discord.nvim', { 'do': ':UpdateRemotePlugins'}
Plug 'prettier/vim-prettier', { 'do': 'npm install' }
Plug 'cakebaker/scss-syntax.vim'

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline_theme='minimalist'
let g:crystal_auto_format = 1
let g:prettier#autoformat = 1

set number

set scrolloff=3

set tabstop=2
set shiftwidth=2
set expandtab

call plug#end()
