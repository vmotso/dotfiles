" ----------------------------------------------------------------------------
" PLUGIN SETTINGS
" ----------------------------------------------------------------------------

call plug#begin('~/.local/share/nvim/plugged')

Plug 'morhetz/gruvbox'
Plug 'python-mode/python-mode', { 'branch': 'develop' }
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'

call plug#end()


"gruvbox______________________________________________________________________

colorscheme gruvbox
set bg=dark

"python-mode__________________________________________________________________

let g:pymode_python = 'python3'							" set python
let g:pymode_options_max_line_length = 120					
let g:python3_host_prog = 'python3' 	" use virenv python

" ----------------------------------------------------------------------------
" OPTIONS
" ----------------------------------------------------------------------------

set nu 										" set number on
set encoding=utf8           							" UTF-8 by default
set autoindent              							" Carry over indenting from previous line
set autoread                							" Don't bother me hen a file changes
set history=200             							" How many lines of history to save

" ----------------------------------------------------------------------------
" KEY MAPS
" ----------------------------------------------------------------------------
nnoremap ; 		:
nnoremap <F8>		:TagbarToggle<CR>
nnoremap <leader>Q	:qa!<CR>
nnoremap <leader>W	:wqa!<CR>
nnoremap <leader>c 	:g/pdb.set_trace()$/d<CR>
nnoremap <leader>f	*ggn:noh<CR>
nnoremap <leader>l	:noh<CR>
nnoremap <leader>p	"+p
nnoremap <leader>s	:vsp 
vnoremap //		y/<C-R>"<CR>
vnoremap ; 		:
vnoremap <C-r>		"hy:%s/<C-r>h//g<left><left>
vnoremap <leader>p	"+p
vnoremap <leader>y	"+y
