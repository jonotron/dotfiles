set nocompatible               " be iMproved
filetype off                   " required!
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

" General
Bundle 'scrooloose/nerdtree'
Bundle 'Raimondi/delimitMate'
Bundle 'altercation/vim-colors-solarized'
Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/nerdcommenter'
Bundle 'kien/ctrlp.vim'
Bundle 'godlygeek/tabular'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'tpope/vim-surround'
Bundle 'scrooloose/syntastic'
Bundle 'mileszs/ack.vim'

" Dependency Bundles
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'

" Auto complete and snippets
Bundle 'Shougo/neocomplcache'
Bundle 'Shougo/neosnippet'
Bundle 'honza/vim-snippets'
Bundle 'garbas/vim-snipmate'
Bundle 'jonotron/snippets'
Bundle 'ervandew/supertab'

" HTML
Bundle 'docunext/closetag.vim'
Bundle 'rstacruz/sparkup'
Bundle 'gregsexton/MatchTag'

" Javascript
Bundle 'groenewege/vim-less'
Bundle 'nono/vim-handlebars'
Bundle 'pangloss/vim-javascript'

" Markdown
Bundle 'plasticboy/vim-markdown'

" Don't fold markdown
let g:vim_markdown_folding_disabled=1

set background=dark
let g:solarized_termtrans=1
let g:solarized_termcolors=256
let g:solarized_contrast="high"
let g:solarized_visibility="high"
colorscheme solarized

filetype on
filetype plugin on
filetype indent on
syntax on

" Autoreload .vimrc if we change it in vim
autocmd! bufwritepost vimrc source ~/.vimrc

" Set my leader key
let mapleader = ','

" Escape out of insert mode when jj is pressed
imap jj <Esc>

" Enable mouse support in terminal mode
set mouse=a

" Window key mappings
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-h> <C-w>h
map <C-l> <C-w>l
map <C-q> <C-w>q

" :W<CR> should be an alias to :w<CR>
command W w

" easily create new tabs
nmap <leader>t :tabnew<CR>

" Set cwd when to dir as file when opened in buffer
autocmd BufEnter * cd %:p:h

" Add tabularize support
vmap <leader>a= :Tabularize /=<CR>
nmap <leader>a= :Tabularize /=<CR>
vmap <leader>a: :Tabularize /:\zs<CR>
nmap <leader>a: :Tabularize /:\zs<CR>
vmap <leader>a, :Tabularize /,\zs<CR>
nmap <leader>a, :Tabularize /,\zs<CR>

" Remap supertab keys
let g:SuperTabMappingForward = '<c-space>'
let g:SuperTabMappingBackward = '<s-c-space>'

" Various config options
set tabstop=2
set shiftwidth=2
set softtabstop=2
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

" Hide the toolbar in guivim
set go-=T

" set .swp files to appear here instead
set backupdir=~/.vim/backup
set directory=~/.vim/backup

" enable less.css highlighting
au BufRead,BufNewFile *.less set filetype=less

" set javascript highlighting for json files
autocmd BufNewFile,BufRead *.json set ft=javascript

" set handlebars for .hbs
au BufRead,BufNewFile *.hbs set ft=handlebars

" enable CloseTag plugin for html/xml like files
autocmd FileType html,xml,handlebars let b:closetag_html_style=1
autocmd FileType html,xhtml,xml,handlebars source ~/.vim/bundle/closetag.vim/plugin/closetag.vim

" enable Sparkup plugin for html/xml like files
au FileType html,xhtml,xml,handlebars source ~/.vim/bundle/sparkup/vim/ftplugin/html/sparkup.vim

" Set ignores for ctrlp
let g:ctrlp_custom_ignore = {
  \'dir': '\.git$\|\.hg$\|\.svn$\|cache\|vendor\|logs\|build\|node_modules\|components\',
  \'file': '\.swp$\|\.exe$\|\.so$\|\.dll$\|\.swo$\|\.lock$\|\.gitignore$\|\.project$'
  \}
" set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/vendor/*,*/cache/*,*/logs/*

" don't error on angular propertys
let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute \"ng-"]

" auto set cursorline
autocmd WinLeave * set nocursorline
autocmd WinEnter * set cursorline
set cursorline

" nop the arrow keys
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" easily turn off highlighting
nnoremap <leader><space> :noh<cr>

" highlight 80char colum
set colorcolumn=80
