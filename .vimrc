" MY VIMRC!

" Run Pathogen...
execute pathogen#infect()

" Tab business (set to 4 spaces)
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab
set expandtab

" Smart indenting specific to files
filetype indent plugin on
set autoindent smartindent

" File saving and confirmation
set confirm
set autowriteall

set nocompatible              " be iMproved, required

" Improves drawing with fast terminals
set ttyfast

" Show cursor in ruler
set ruler

" Better command line completion
set wildmenu

" Show what you are typing as a command.
set showcmd

" Turn on syntax highlighting.
syntax enable
syntax on

" Keep at least 3 lines above/below when scrolling
set scrolloff=3

" Enable mouse support in console.
set mouse=a

" Turn on line numbers
set number

" Make backspace delete over newlines etc
set backspace=2

" Ignore case using / but consider when uppercase is specified
set ignorecase
set smartcase

" Move cursor to matched string while searching and highlight
set incsearch
set hlsearch

" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>

" Map jj to escape
inoremap jj <Esc>

" Set off matching parenthesis
highlight MatchParen ctermbg=4

" If using gui, select fav colorscheme
if has("gui_running")
    colorscheme desert
endif

" Always show statusline
set laststatus=2

" Keep all backup and temp files in the same place
set backup
set backupdir=~/.vim/backup
set directory=~/.vim/tmp

" Automatically set directory to current file
set autochdir

" Soft wrap text
set wrap linebreak nolist

" Mapping to make colon command easier
nnoremap ; :
nnoremap : ;
nnoremap W <C-w><C-w>
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap j gj
nnoremap k gk
  
" Map jj to escape
inoremap jj <Esc>

" If Python file is buffer, excute current file with...
autocmd FileType python nnoremap <buffer> <F5> :exec '!python' shellescape(@%, 1)<cr>

" Auto open NERDTree...
autocmd vimenter * NERDTree

" Jedi-Vim configuration...
nnoremap <C-p> :Pyimport 

