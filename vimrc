set cursorline
hi CursorLine cterm=NONE ctermbg=black guibg=#000050 guifg=fg
set number nu
set incsearch is
set ignorecase ic
set hlsearch hls
set tabstop=4
set expandtab
set shiftwidth=4
set softtabstop=4
set pastetoggle=<F12>
execute pathogen#infect()
syntax on
filetype plugin indent on
filetype plugin on
set clipboard=unnamed
set clipboard=unnamedplus
