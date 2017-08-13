" Using vim-plug for plugins {{
call plug#begin('~/.local/share/nvim/plugged')
" Color scheme
Plug 'jackcogdill/ayu-vim'
" Auto completion
Plug 'Valloric/YouCompleteMe', { 'do': 'python3 install.py' }
" Multiple cursors like sublime
Plug 'terryma/vim-multiple-cursors'
" File finder
Plug 'kien/ctrlp.vim'
" Initialize plugin system
call plug#end()
" }}

" Color scheme {{
set number
set cursorline
set termguicolors     " enable true colors support
"let ayucolor="light"  " for light version of theme
let ayucolor="mirage" " for mirage version of theme
"let ayucolor="dark"   " for dark version of theme
colorscheme ayu
" }}

" YCM config {{
let g:ycm_add_preview_to_completeopt = 1
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_server_python_interpreter = '/opt/local/bin/python3'
" }}

" CtrlP config {{
" Open file menu
nnoremap <Leader>p :CtrlP<CR>
" Open buffer menu
nnoremap <Leader>b :CtrlPBuffer<CR>
" }}

" Smart case
set ignorecase
set smartcase

" Tab is 4 spaces
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

" Don't use Ibeam cursor in insert mode
set guicursor=

" Remove search highlighting
nnoremap <silent> <C-l> :let @/=""<CR>
" Press // in visual mode to search selected text
vnoremap // y/<C-R>"<CR>
" Redo macro with space
nnoremap <Space> @q
" Redo macro with leader+space at next search result
nnoremap <Leader><Space> n@q
" Redo macro on all lines in visual mode
vnoremap <Space> :normal @q<CR>
" Redo last change on all lines in visual mode
vnoremap . :normal .<CR>
" Press leader+escape in terminal to get out
tnoremap <Leader><Esc> <C-\><C-n>

