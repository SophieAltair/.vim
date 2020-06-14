" Colors {{{
syntax enable
set background=dark
colorscheme solarized
" }}}
" Spaces & Tabs {{{
set tabstop=4           " 4 space tab
set expandtab           " use spaces for tabs
set softtabstop=4       " 4 space tab
set modelines=1
" }}}
" UI {{{
set number
set cursorline
filetype indent on
set wildmenu
set lazyredraw
" }}}
" Searching {{{
set incsearch
set hlsearch
nnoremap <leader><space> :nohlsearch<CR>
" }}}
" Movement {{{
nnoremap j gj
nnoremap k gk
" }}}
" Folding {{{
set foldmethod=indent   " fold based on indent level
set foldnestmax=10      " max 10 depth
set foldenable          " don't fold field by default on open
nnoremap <space> za
set foldlevelstart=10   " start with fold level of 1
" }}}
" Movement {{{
nnoremap gV `[v`]
" }}}
" Leader Shortcuts {{{
let mapleader=","
" }}}

" vim:foldmethod=marker:foldlevel=0
