" ----------------------------------------------------------------------------
" PLUGIN SETTINGS
" ----------------------------------------------------------------------------

call plug#begin('~/.local/share/nvim/plugged')

Plug 'morhetz/gruvbox'
call plug#end()

"gruvbox______________________________________________________________________

colorscheme gruvbox
set bg=dark

" ----------------------------------------------------------------------------
" OPTIONS
" ----------------------------------------------------------------------------

" shiftwidth:
"		Number of spaces to use for each step of (auto)indent.

" softtabstop:
"		Number of spaces that a <Tab> counts for while performing editing
"		operations, like inserting a <Tab> or using <BS>.  It "feels" like

" Correct indentation
au BufNewFile,BufRead *.js,*.html,*.css,*.yml,*.json
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2

set nu                     		  " set number on
set encoding=utf8                         " UTF-8 by default
set autoindent                            " Carry over indenting from previous line
set autoread                              " Don't bother me hen a file changes
set history=200                           " How many lines of history to save
set undofile

" ----------------------------------------------------------------------------
" KEY MAPS
" ----------------------------------------------------------------------------

vnoremap ;     :
nnoremap ;     :

" clean hightliting
nnoremap <leader>l  :noh<CR>

" paste from clipboard
vnoremap <leader>p  "+p
nnoremap <leader>p  "+p

" copy to clipboard
vnoremap <leader>y  "+y

" open buffers window
nnoremap <leader>b :ls<CR>:b<Space>

