call plug#begin('~/.local/share/nvim/plugged')

" Themes
Plug 'bling/vim-airline'
Plug 'arcticicestudio/nord-vim'
Plug 'dracula/vim', { 'as': 'dracula' }

" Language specific
Plug 'vim-crystal/vim-crystal'
Plug 'rust-lang/rust.vim'
Plug 'cakebaker/scss-syntax.vim'

" Just useful, not necessary
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdtree'
Plug 'junegunn/goyo.vim'
Plug 'ObserverOfTime/discord.nvim', {'do': ':UpdateRemotePlugins'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'ryanoasis/vim-devicons'

" Conquer of Completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Formatters/Prettifiers
Plug 'prettier/vim-prettier', { 'do': 'npm install' }
Plug 'sbdchd/neoformat'

syntax enable
filetype plugin indent on

let g:rustfmt_autosave = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:crystal_auto_format = 1
let g:prettier#autoformat = 1
let g:dracula_colorterm = 0
let NERDTreeShowHidden=1

set scrolloff=3
set encoding=utf-8
set autoindent
set smartindent
set nowritebackup
set cmdheight=2
set shortmess+=c
set updatetime=300
set tabstop=2
set shiftwidth=2
set expandtab
set autoindent
set relativenumber
set completeopt-=preview
set nobackup
set nowritebackup
set hidden
set nocompatible
set t_Co=16

augroup fmt
  autocmd!
  autocmd BufWritePre * undojoin | Neoformat
augroup END

autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif

let mapleader = "\<Space>"

autocmd VimEnter * NERDTree | wincmd p

nnoremap <leader>n :NERDTreeFocus<CR>

nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
nnoremap <C-q> :Goyo<CR>

call plug#end()

colorscheme dracula
