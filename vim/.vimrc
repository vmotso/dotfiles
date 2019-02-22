" Specify a directory for plugins
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
" Initialize plugin system

call plug#end()

syntax on


"Correct indentation python
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |
    \ set colorcolumn=80

au BufNewFile,BufRead *.js,*.html,*.css,*.yml,*.json
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |

" define bad whitespace
highlight BadWhitespace ctermbg=red guibg=darkred

" avoid extraneous whitespace
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" Enable utf
set encoding=utf-8
highlight ColorColumn term=reverse cterm=NONE ctermfg=NONE ctermbg=4 gui=NONE guifg=NONE guibg=blue
highlight ColorColumn ctermbg=Blue


" ----------------------------------------------------------------------------
"  " PLUGIN SETTINGS
"  "
"  ----------------------------------------------------------------------------

"gruvbox______________________________________________________________________

colorscheme gruvbox
set bg=dark
