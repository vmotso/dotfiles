set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'bling/vim-airline'
Plugin 'davidhalter/jedi-vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'majutsushi/tagbar'
Plugin 'elzr/vim-json'
" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

syntax on
set tags=./tags;$HOME
" Enable folding with the spacebar
nnoremap <space> za

nmap <F8> :TagbarToggle<CR>

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable utf
set encoding=utf-8
highlight ColorColumn ctermbg=blue

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

"Set Space as leader key
let mapleader=" "

colorscheme peachpuff
"look pretty well
let python_highlight_all=1
set nu
