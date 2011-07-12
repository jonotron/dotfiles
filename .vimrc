colorscheme desert

filetype on
filetype plugin on
filetype indent on
syntax on

" Escape out of insert mode when jj is pressed
imap jj <Esc>

" Window key mappings
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-h> <C-w>h
map <C-l> <C-w>l
map <C-q> <C-w>q

" NERDTree key mappings
nmap ,n :NERDTreeToggle<CR>
autocmd BufEnter * cd %:p:h


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
set splitright
set ignorecase
set smartcase

" set .swp files to appear here instead
set backupdir=~/.vim/backup
set directory=~/.vim/backup

" enable twig highlighting
au BufRead,BufNewFile *.twig set syntax=htmljinja
