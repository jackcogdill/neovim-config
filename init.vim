" Using vim-plug for plugins
call plug#begin('~/.local/share/nvim/plugged')

" colorscheme
Plug 'KeitaNakamura/neodark.vim'

" Auto completion
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --tern-completer --clang-completer' }
let g:ycm_add_preview_to_completeopt = 1
let g:ycm_autoclose_preview_window_after_completion = 1

" Multiple cursors like sublime
Plug 'terryma/vim-multiple-cursors'

" Initialize plugin system
call plug#end()

" Line numbers and cursor line
set number
set cursorline
" color scheme
colorscheme neodark

" Smart case
set ignorecase
set smartcase

" Don't use Ibeam cursor in insert mode
set guicursor=

