" Using vim-plug for plugins
call plug#begin('~/.local/share/nvim/plugged')

" colorscheme
Plug 'KeitaNakamura/neodark.vim'
" Auto completion
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer' }
" Multiple cursors like sublime
Plug 'terryma/vim-multiple-cursors'

" Initialize plugin system
call plug#end()

set number
set cursorline

colorscheme neodark

set ignorecase
set smartcase

