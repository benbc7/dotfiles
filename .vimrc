set clipboard=unnamedplus
set number

filetype plugin on
syntax on

let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[2 q"
let &t_EI = "\<Esc>[4 q"

set cursorline
highlight CursorLine cterm=NONE
highlight LineNr cterm=bold ctermfg=6
highlight CursorLineNr cterm=bold ctermfg=6 ctermbg=1
