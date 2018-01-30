syntax on
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
filetype off                  " required

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'tmhedberg/SimpylFold'
Plugin 'ctrlpvim/ctrlp.vim'
Bundle 'Valloric/YouCompleteMe'
"File browsing
Plugin 'scrooloose/nerdtree'
" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)
" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"split navigations
nnoremap <C-J> <C-W><C-J> "Ctr-j move to split below
nnoremap <C-K> <C-W><C-K> "Ctr-k move to split above
nnoremap <C-L> <C-W><C-L> "Ctr-l move to split right
nnoremap <C-H> <C-W><C-H> "Ctr-h move to split left
" Enable folding with the spacebar
nnoremap <space> za

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable utf
set encoding=utf-8
highlight ColorColumn ctermbg=gray

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

au BufNewFile,BufRead *.js,*.html,*.css,*.yml
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |

" define bad whitespace
highlight BadWhitespace ctermbg=red guibg=darkred

" avoid extraneous whitespace
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

"Set Space as leader key
let mapleader=" "

"See definition after declaration
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

"python with virtualenv support
py3 << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
  project_base_dir = os.environ['VIRTUAL_ENV']
  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
  exec(compile(open(activate_this, "rb").read(), activate_this, 'exec'), dict(__file__=activate_this))
EOF

" package options
set nocompatible              " required

"look pretty well
let python_highlight_all=1
syntax on
"ignore files in NERDTree
let NERDTreeIgnore=['\.pyc$', '\~$']
"open a NERDTree automatically when vim starts up if no files were specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"map a specific key or shortcut to open NERDTree
map <C-n> :NERDTreeToggle<CR>
"set numbering
set nu
"enable system clipboard
"set clipboard=unnamedplus

" next tab
map  <S-Left> :tabp<CR>
" prev tab
map  <S-Right> :tabn<CR>

