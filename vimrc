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
" Mouse (God Save Us) {{{
set mouse=a
" }}}
" Syntax Highlighting {{{
let g:is_posix = 1
" }}}
" System Clipboard {{{
vnoremap <C-y> :w !pbcopy<CR><CR>
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
" Function Keys {{{
map <F1> :hi Normal guibg=NONE ctermbg=NONE<CR>
map <F2> :colorscheme codedark<CR>
map <F3> :colorscheme solarized8<CR>
map <F4> :colorscheme sorbet<CR>
map <F12> :set termguicolors<CR> 
"}}}
" netrw {{{
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 0
let g:netrw_winsize = 25
let g:netrw_list_hide = '\(^\|\s\s\)\zs\.\S\+'
" close if final buffer is netrw or the quickfix
nmap - :Vexplore<cr>
augroup finalcountdown
 au!
 autocmd WinEnter * if winnr('$') == 1 && getbufvar(winbufnr(winnr()), "&filetype") == "netrw" || &buftype == 'quickfix' |q|endif
augroup END
" }}}
" YAML Fixes {{{
augroup yaml_fix
    autocmd!
    autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab indentkeys-=0# indentkeys-=<:>
augroup END
"}}}
" Typescript Fixes {{{
" augroup ts_fix
"     autocmd!
"     autocmd FileType typescript setlocal re=0
" augroup END
set re=0
"}}}
" vim-tidal {{{

let g:tidal_target = "terminal"

"}}}
" Plugins {{{
call plug#begin()

Plug 'tidalcycles/vim-tidal'

Plug 'easymotion/vim-easymotion'

call plug#end()

" Easymotion {{{
let g:EasyMotion_do_mapping = 0
" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `s{char}{label}`
" nmap s <Plug>(easymotion-overwin-f)
" or
" `s{char}{char}{label}`
" Need one more keystroke, but on average, it may be more comfortable.
nmap s <Plug>(easymotion-overwin-f2)

" Turn on case-insensitive feature
let g:EasyMotion_smartcase = 1

" JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>w <Plug>(easymotion-w)
map <Leader>b <Plug>(easymotion-b)
" }}}
"}}}
" vim:foldmethod=marker:foldlevel=0
