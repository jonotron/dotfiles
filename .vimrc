set nocompatible               " be iMproved
filetype off                   " required!
" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.vim/plugged')

" General
Plug 'tpope/vim-sensible'
Plug 'scrooloose/nerdtree'
Plug 'Raimondi/delimitMate'
Plug 'altercation/vim-colors-solarized'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdcommenter'
Plug 'kien/ctrlp.vim'
Plug 'godlygeek/tabular'
Plug 'Lokaltog/vim-easymotion'
Plug 'tpope/vim-surround'
Plug 'scrooloose/syntastic'
Plug 'mileszs/ack.vim'

" Dependency plugs
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'

" Auto complete and snippets
"Plug 'Shougo/neocomplete'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --tern-completer' }
Plug 'ternjs/tern_for_vim', { 'do': 'npm install' }
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'
Plug 'garbas/vim-snipmate'
Plug 'jonotron/snippets'
Plug 'ervandew/supertab'

" HTML
Plug 'docunext/closetag.vim'
Plug 'rstacruz/sparkup'
Plug 'gregsexton/MatchTag'
"Plug 'mattn/emmet-vim'

" Javascript
"Plug 'groenewege/vim-less'
Plug 'nono/vim-handlebars'
"Plug 'pangloss/vim-javascript'
Plug 'othree/yajs.vim'
Plug 'othree/es.next.syntax.vim'
"Plug 'jelera/vim-javascript-syntax'
Plug 'mxw/vim-jsx'
Plug 'gavocanov/vim-js-indent'

" JSON
Plug 'elzr/vim-json'

" jison
Plug 'wizicer/vim-jison'

" Markdown
Plug 'plasticboy/vim-markdown'

" Git
Plug 'airblade/vim-gitgutter'

call plug#end()


" NERDTree config
let g:NERDTreeDirArrows = 1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

" Don't fold markdown
let g:vim_markdown_folding_disabled=1

" Don't conceal markdown
let g:vim_markdown_conceal = 0

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
autocmd! bufwritepost $MYVIMRC source $MYVIMRC

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
command! W w

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
" set autoindent
" set smartindent
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

" set handlebars for .hbs
au BufRead,BufNewFile *.hbs set ft=handlebars

" enable CloseTag plugin for html/xml like files
autocmd FileType html,xml,handlebars let b:closetag_html_style=1
autocmd FileType html,xhtml,xml,handlebars source ~/.vim/bundle/closetag.vim/plugin/closetag.vim

" enable JSX syntax highlighting in .js files
let g:jsx_ext_required = 0

" enable Sparkup plugin for html/xml like files
au FileType html,xhtml,xml,handlebars source ~/.vim/bundle/sparkup/vim/ftplugin/html/sparkup.vim

" enable Sparkup for jsx
autocmd FileType javascript.jsx runtime! ftplugin/html/sparkup.vim

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

" set relative line numbers
" set relativenumber
" set absolute line numbers
" set number

" easily turn off highlighting
nnoremap <leader><space> :noh<cr>

" highlight 80char colum
set colorcolumn=80

" #### neocomplete settings
" Disable AutoComplPop.
"let g:acp_enableAtStartup = 0
"" Use neocomplete.
"let g:neocomplete#enable_at_startup = 1
"" Use smartcase.
"let g:neocomplete#enable_smart_case = 1
"" Set minimum syntax keyword length.
"let g:neocomplete#sources#syntax#min_keyword_length = 3

"" Define dictionary.
"let g:neocomplete#sources#dictionary#dictionaries = {
    "\ 'default' : '',
    "\ 'vimshell' : $HOME.'/.vimshell_hist',
    "\ 'scheme' : $HOME.'/.gosh_completions'
        "\ }

"" Define keyword.
"if !exists('g:neocomplete#keyword_patterns')
    "let g:neocomplete#keyword_patterns = {}
"endif
"let g:neocomplete#keyword_patterns['default'] = '\h\w*'

"" Plugin key-mappings.
"inoremap <expr><C-g>     neocomplete#undo_completion()
"inoremap <expr><C-l>     neocomplete#complete_common_string()

"" Recommended key-mappings.
"" <CR>: close popup and save indent.
"inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
"function! s:my_cr_function()
  "return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
  "" For no inserting <CR> key.
  ""return pumvisible() ? "\<C-y>" : "\<CR>"
"endfunction
"" <TAB>: completion.
"inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
"" <C-h>, <BS>: close popup and delete backword char.
"inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
"" Check if popup is visible otherwise use delmitmate bs
"inoremap <expr><BS> pumvisible() ? neocomplete#smart_close_popup()."\<C-h>" : delimitMate#BS()
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? "\<C-y>" : "\<Space>"

" AutoComplPop like behavior.
"let g:neocomplete#enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplete#enable_auto_select = 1
"let g:neocomplete#disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
"if !exists('g:neocomplete#sources#omni#input_patterns')
  "let g:neocomplete#sources#omni#input_patterns = {}
"endif
""let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
""let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
""let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

"" For perlomni.vim setting.
"" https://github.com/c9s/perlomni.vim
"let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'

" ### end neocomplete config

" neosnippet key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
"imap <expr><TAB>
" \ pumvisible() ? "\<C-n>" :
" \ neosnippet#expandable_or_jumpable() ?
" \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif

" reload snippets when edited
autocmd BufWritePost *.snip,*.snippets
  \ call neosnippet#variables#set_snippets({})
