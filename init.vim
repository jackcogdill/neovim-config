" Using vim-plug for plugins
call plug#begin('~/.local/share/nvim/plugged')

" Color scheme
Plug 'ayu-theme/ayu-vim'

" Auto completion
Plug 'Valloric/YouCompleteMe', { 'do': 'python3 install.py --tern-completer' }
let g:ycm_add_preview_to_completeopt = 1
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_server_python_interpreter = '/opt/local/bin/python3'

" Multiple cursors like sublime
Plug 'terryma/vim-multiple-cursors'

" Initialize plugin system
call plug#end()

" Line numbers and cursor line
set number
set cursorline

" color scheme
set termguicolors     " enable true colors support
"let ayucolor="light"  " for light version of theme
let ayucolor="mirage" " for mirage version of theme
"let ayucolor="dark"   " for dark version of theme
colorscheme ayu

" Smart case
set ignorecase
set smartcase

" Don't use Ibeam cursor in insert mode
set guicursor=

" Disable search highlighting
set nohlsearch

