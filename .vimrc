set nocompatible
if has("gui_running")
    set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 13
endif
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Let Vundle manage Vundle
Bundle 'gmarik/vundle'

" My Bundles
Bundle 'tpope/vim-sensible'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-powerline'
Bundle 'scrooloose/syntastic'
Bundle 'scrooloose/nerdtree'
Bundle 'kien/ctrlp.vim'
Bundle 'rking/ag.vim'
Bundle 'slim-template/vim-slim'
Bundle 'pangloss/vim-javascript.git'
Bundle 'elzr/vim-json'
Bundle 'godlygeek/tabular.git'
Bundle 'kongo2002/vim-space.git'
Bundle 'kana/vim-vspec.git'
Bundle 'nelstrom/vim-qargs.git'
Bundle 'vim-scripts/vimwiki.git'
Plugin 'bling/vim-airline'
Plugin 'Valloric/YouCompleteMe'
Plugin 'jiangmiao/auto-pairs'


" Custom textobjects
Bundle 'kana/vim-textobj-user.git'
Bundle 'kana/vim-textobj-entire.git'
Bundle 'kana/vim-textobj-indent.git'
Bundle 'kana/vim-textobj-syntax.git'
Bundle 'kana/vim-textobj-line.git'

" Colorschemes
Bundle 'nanotech/jellybeans.vim'
Bundle 'altercation/vim-colors-solarized.git'
Bundle 'nelstrom/vim-mac-classic-theme.git'
Bundle 'nelstrom/vim-blackboard.git'
Bundle 'zanloy/vim-colors-sunburst.git'
Bundle 'jonathanfilip/vim-lucius.git'
Bundle 'tomasr/molokai.git'
Bundle 'morhetz/gruvbox.git'
Bundle 'w0ng/vim-hybrid.git'


filetype plugin indent on
" Turn on Omni Completion {
    filetype plugin on
    set ofu=syntaxcomplete#Complete
" }
let mapleader=","


syntax enable
" IMPORTANT: Uncomment one of the following lines to force
" using 256 colors (or 88 colors) if your terminal supports it,
" but does not automatically use 256 colors by default.
set t_Co=256
"set t_Co=88
let g:CSApprox_attr_map = { 'bold' : 'bold', 'italic' : '', 'sp' : '' }

"For lucius
" let g:lucius_no_term_bg = 1
" colorscheme lucius
" LuciusDark

"For molokai
" let g:molokai_original = 1
" let g:rehash256 = 1
" colorscheme molokai

"For Gurvbox
"set background=dark
"colorscheme gruvbox

"For Hybrid
"set background=dark
"colorscheme hybrid

syntax enable
set background=dark
let g:solarized_termcolors=256
colorscheme solarized


set cursorline
set modelines=0
set shiftwidth=2
set clipboard=unnamed
set synmaxcol=128
set ttyscroll=10
set encoding=utf-8
set laststatus=2
set nowrap
set number
set expandtab
set nowritebackup
set noswapfile
set nobackup
set hlsearch
set ignorecase
set smartcase
set showmatch		" Show matching brackets.
set autowrite		" Automatically save before commands like :next and :make

" Text formatting {
    set autoindent                          " copy indent from current line when starting a new line
    set infercase                           " infer case when doing keyword completion
    set shiftround                          " when at 3 spaces, and I hit > ... go to 4, not 5
    set smartindent                         " smart autoindenting for c-like languages
" }
" Tab settings {
     set expandtab                           " expand tabs to spaces
     set shiftwidth=4                        " number of spaces to use with autoindent
     set smarttab                            " tab and backspace are smart
     set softtabstop=4                       " bumber of spaces used by expandtab
     set tabstop=4                           " size of a real tab character
     set autoindent                  " indent at the same level of the previous line
" }

" Set tabs to 2 spaces for javascript files
    autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
" }
" Automatic formatting
autocmd BufWritePre *.rb :%s/\s\+$//e
autocmd BufWritePre *.go :%s/\s\+$//e
autocmd BufWritePre *.haml :%s/\s\+$//e
autocmd BufWritePre *.js :%s/\s\+$//e
autocmd BufWritePre *.html :%s/\s\+$//e
autocmd BufWritePre *.scss :%s/\s\+$//e
autocmd BufWritePre *.slim :%s/\s\+$//e

au BufNewFile * set noeol
au BufRead,BufNewFile *.go set filetype=go

" No show command
autocmd VimEnter * set nosc

" Quick ESC
imap jj <ESC>

" Jump to the next row on long lines
map <Down> gj
map <Up>   gk
nnoremap j gj
nnoremap k gk

" format the entire file
nmap <leader>fef ggVG=

" Open new buffers
nmap <leader>s<left>   :leftabove  vnew<cr>
nmap <leader>s<right>  :rightbelow vnew<cr>
nmap <leader>s<up>     :leftabove  new<cr>
nmap <leader>s<down>   :rightbelow new<cr>

" Tab between buffers
noremap <tab> <c-w><c-w>

" Switch between last two buffers
nnoremap <leader><leader> <C-^>

" Resize buffers
if bufwinnr(1)
  nmap Ä <C-W><<C-W><
  nmap Ö <C-W>><C-W>>
  nmap ö <C-W>-<C-W>-
  nmap ä <C-W>+<C-W>+
endif
" Syntastic
"let g:syntastic_mode_map = { 'mode': 'passive' }
"let g:syntastic_javascript_checkers = ['jshint','jscs']
let g:syntastic_javascript_checkers = ['jshint']

" Airline - FontForge/Powerline {
    let g:airline_powerline_fonts = 1
    let g:bufferline_echo = 0
    let g:airline_theme='powerlineish'
    let g:airline#extensions#branch#enabled = 1
    let g:airline#extensions#whitespace#enabled = 1
    let g:airline#extensions#hunks#non_zero_only = 1
" }

" NERDTree
nmap <leader>n :NERDTreeToggle<CR>
let NERDTreeHighlightCursorline=1
let g:NERDTreeDirArrows=0
let NERDTreeIgnore = ['tmp', '.yardoc', 'pkg']


" CtrlP
nnoremap <silent> t :CtrlP<cr>
let g:ctrlp_working_path_mode = 2
let g:ctrlp_by_filename = 1
let g:ctrlp_max_files = 600
let g:ctrlp_max_depth = 5

" status line
"    if has('statusline')
"        function! SetStatusLineStyle()
"            let &stl="%f %y "                       .
"                        \"%([%R%M]%)"                   .
"                        \"%#StatusLineNC#%{&ff=='unix'?'':&ff.'\ format'}%*" .
"                        \"%{'$'[!&list]}"               .
"                        \"%{'~'[&pm=='']}"              .
"                        \"%="                           .
"                        \"#%n %l/%L,%c%V "              .
"                        \""
"        endfunc
"        call SetStatusLineStyle()
"    endif
" }
" Quit with :Q
command -nargs=0 Quit :qa!

