" Colors {{{
syntax enable
set background=dark

set termguicolors
colorscheme sorbet

"" OS Compat - currently deprecated but might reuse
"let uname = substitute(system('uname'),'\n','','')
"
"" Linux
"if uname == 'Linux'
"    set termguicolors 
"    colorscheme solarized8
"
"" Mac
"elseif uname == 'Darwin'
"    colorscheme solarized8
"
"endif
" }}}
" Spaces & Tabs {{{
set tabstop=4           " 4 space tab
set expandtab           " use spaces for tabs
set softtabstop=4       " 4 space tab
set modelines=1
set shiftwidth=4
" }}}
" UI {{{
set number
set cursorline
filetype indent on
set wildmenu
set lazyredraw
set breakindent
set breakindentopt=shift:2,min:40,sbr
set showbreak=>>
if exists('+colorcolumn') "ColorColumn"
      set colorcolumn=125
  else
        au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif
" }}}
" Searching {{{
set incsearch
set hlsearch
nnoremap <leader><space> :nohlsearch<CR>
" }}}
" Movement {{{
nnoremap j gj
nnoremap k gk
nnoremap gV `[v`]
" }}}
" Folding {{{
set foldmethod=indent   " fold based on indent level
set foldnestmax=10      " max 10 depth
set foldenable          " don't fold field by default on open
nnoremap <space> za
set foldlevelstart=10   " start with fold level of 1
" }}}
" Leader Shortcuts {{{
map , <Leader>
" }}}
" Spell Check {{{
set spelllang=en
set spellfile=$HOME/.vim/spell/en.utf-8.add
"}}}
" function Keys {{{
map <F1> :colorscheme codedark<CR>
map <F2> :colorscheme solarized8<CR>
map <F4> :colorscheme sorbet<CR>
map <F12> :set termguicolors<CR> 
"}}}
" YAML Fixes {{{
augroup yaml_fix
    autocmd!
    autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab indentkeys-=0# indentkeys-=<:>
augroup END
"}}}
" vim-tidal {{{

let g:tidal_target = "terminal"

"}}}
" Plugins {{{
call plug#begin()

Plug 'tidalcycles/vim-tidal'

call plug#end()
"}}}
" vim:foldmethod=marker:foldlevel=0
