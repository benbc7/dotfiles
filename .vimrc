set clipboard=unnamedplus,unnamed
set number
set mouse=a
set guifont=Source\ Code\ Pro\ 14
set iminsert=0
set imsearch=0
set nowrapscan
set bs=2
set hlsearch
set cursorline
set wildmenu
set showcmd
set ignorecase
set smartcase
set autoindent
set ruler
set confirm!
set shiftwidth=4
set tabstop=4

filetype indent plugin on
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

highlight CursorLine cterm=NONE ctermbg=0
highlight LineNr cterm=bold ctermfg=6
highlight CursorLineNr cterm=bold ctermfg=6 ctermbg=1
