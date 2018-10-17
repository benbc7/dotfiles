set clipboard=unnamedplus
set number

set mouse=a

filetype plugin on
syntax on

let g:powerline_pycmd = "py3"
let g:Powerline_symbols = 'fancy'
let g:Powerline_theme = 'agnoster'
set rtp+=/usr/local/lib/python3.7/dist-package/powerline/bindings/vim/
set laststatus=2
set t_Co=256

let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[2 q"
let &t_EI = "\<Esc>[4 q"

set cursorline
highlight CursorLine cterm=NONE
highlight LineNr cterm=bold ctermfg=6
highlight CursorLineNr cterm=bold ctermfg=6 ctermbg=1
