" Using vim-plug for plugins
" ==========================
call plug#begin('~/.local/share/nvim/plugged')

" Color scheme
Plug 'ayu-theme/ayu-vim'

" Auto completion
Plug 'Valloric/YouCompleteMe', { 'do': 'python3 install.py --tern-completer' }

" Multiple cursors like sublime
Plug 'terryma/vim-multiple-cursors'

" File tree
Plug 'scrooloose/nerdtree'

" Initialize plugin system
call plug#end()
" ==========================

" Color scheme
" ============
" Line numbers and cursor line
set number
set cursorline
set termguicolors     " enable true colors support
"let ayucolor="light"  " for light version of theme
let ayucolor="mirage" " for mirage version of theme
"let ayucolor="dark"   " for dark version of theme
colorscheme ayu

" YCM config
let g:ycm_add_preview_to_completeopt = 1
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_server_python_interpreter = '/opt/local/bin/python3'

" Nerd tree config
" ================
" Open a NERDTree automatically when vim starts up
autocmd vimenter * NERDTree
" Jump to the main window.
autocmd VimEnter * wincmd p
" Close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeDirArrowExpandable = ''
let g:NERDTreeDirArrowCollapsible = ''

" Smart case
set ignorecase
set smartcase

" Don't use Ibeam cursor in insert mode
set guicursor=

" Remove search highlighting
nnoremap <silent> <C-l> :let @/=""<CR>

