call plug#begin('~/.local/share/nvim/plugged')

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'

let g:airline_theme='minimalist'

call plug#end()
