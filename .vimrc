colorscheme desert

filetype on
filetype plugin on
filetype indent on
syntax on

" Escape out of insert mode when jj is pressed
imap jj <Esc>

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set hlsearch
set incsearch
set number
set autoindent
set smartindent
set showmatch

set splitbelow
set ignorecase
set smartcase

" set .swp files to appear here instead
set backupdir=~/.vim/backup
set directory=~/.vim/backup

" enable twig highlighting
au BufRead,BufNewFile *.twig set syntax=htmljinja
