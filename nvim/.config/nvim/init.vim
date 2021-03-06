call plug#begin('~/.local/share/nvim/plugged')

"
" THEMES
" 
Plug 'arcticicestudio/nord-vim'
Plug 'itchyny/lightline.vim'
Plug 'mengelbrecht/lightline-bufferline'
Plug 'joshdick/onedark.vim'
Plug 'chriskempson/base16-vim'
Plug 'daviesjamie/vim-base16-lightline'

"
" LANGUAGE SPECIFIC
" 
Plug 'vim-crystal/vim-crystal'
Plug 'rust-lang/rust.vim'
Plug 'cakebaker/scss-syntax.vim'

"
" USEFUL
" 
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdtree'
Plug 'junegunn/goyo.vim'
Plug 'ObserverOfTime/discord.nvim', {'do': ':UpdateRemotePlugins'}
Plug 'ryanoasis/vim-devicons'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
Plug 'ThePrimeagen/git-worktree.nvim'

"
" CONQUER OF COMPLETION
" 
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"
" FORMATTERS
" 
Plug 'prettier/vim-prettier', { 'do': 'npm install' }
Plug 'sbdchd/neoformat'

syntax enable
filetype plugin indent on

"
" VARIABLES
" 

let g:rustfmt_autosave = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tagbar#enabled = 0
let g:crystal_auto_format = 1
let g:prettier#autoformat = 1
let g:dracula_colorterm = 0
let g:lightline#bufferline#show_number = 1
let g:lightline#bufferline#enable_devicons = 1
let NERDTreeShowHidden=1
let base16colorspace=256
let g:discord_activate_on_enter=0

let g:lightline = {
      \ 'colorscheme': 'base16',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ], [ 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'tabline': {
      \   'left': [ ['buffers'] ]
      \ },
      \ 'component_expand': {
      \   'buffers': 'lightline#bufferline#buffers'
      \ },
      \ 'component_type': {
      \   'buffers': 'tabsel'
      \ }
      \ }

set scrolloff=3
set encoding=utf-8
set mouse=a
set autoindent
set smartindent
set nohlsearch
set nowrap 
set nowritebackup
set cmdheight=2
set shortmess+=c
set incsearch
set updatetime=300
set tabstop=2
set showtabline=2
set shiftwidth=2
set expandtab
set autoindent
set number
set relativenumber
set completeopt-=preview
set nobackup
set nowritebackup
set hidden
set noswapfile
set nocompatible
set t_Co=256
set path+=**
set wildmode=longest,list,full
set wildmenu
set wildignore+=**/.git/*
set wildignore+=**/target/*
set wildignore+=**/node_modules/*
set termguicolors

augroup fmt
  autocmd!
  autocmd BufWritePre * undojoin | Neoformat
augroup END

autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif

nnoremap <SPACE> <Nop>
let mapleader = ' '

autocmd VimEnter * NERDTree | wincmd p

"
" REMAPS
" 

nnoremap <Leader>n :NERDTreeFocus<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
nnoremap <C-q> :Goyo<CR>

nnoremap <Leader><CR> :so ~/.config/nvim/init.vim<CR>

nnoremap <Leader>ff <CMD>lua require('telescope.builtin').find_files({hidden = true })<CR>
nnoremap <Leader>fg <CMD>lua require('telescope.builtin').live_grep()<CR>
nnoremap <Leader>fb <CMD>lua require('telescope.builtin').buffers()<CR>
nnoremap <Leader>fh <CMD>lua require('telescope.builtin').help_tags()<CR>
nnoremap <Leader>vrc :lua require('nvim.telescope').search_dotfiles()<CR>

call plug#end()

lua require('nvim')

"
" COLORSCHEME
" 

" URxvt doesnt support 24 bit color so this scheme will look a bit weird

colorscheme base16-default-dark
