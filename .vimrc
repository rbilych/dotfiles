"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"   Vundle
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/vundle'

" Interface
" For terminal colors use
" https://github.com/Anthony25/gnome-terminal-colors-solarized
Plugin 'altercation/vim-colors-solarized'
Plugin 'Lokaltog/vim-powerline'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'tpope/vim-surround'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'godlygeek/tabular'
Plugin 'Yggdroot/indentLine'
Plugin 'christoomey/vim-tmux-navigator'

" Development
Plugin 'tpope/vim-endwise'
Plugin 'sheerun/vim-polyglot'
""""""""""""""""""""""""""""""""""""""""
call vundle#end()             " required
filetype plugin indent on     " required


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"   Interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set colorcolumn=80 " show 80 column
set number " show numbers
set rnu " show relative numbers
syntax on " syntax highlight
set showmode " always show currently mode
set encoding=utf-8 " default encoding
set fileformat=unix " add lf in the end of file
set wildmenu " enhance command-line completion
set wildmode=list:longest,full " set completion mode
set wrap " wrap long lines
set linebreak " don't break words when wrapping
set autoindent " copy indent from current line
set smartindent " smart indenting when starting a new line
set shiftwidth=2 " number of spaces to use for each step of (auto)indent
set expandtab " use spaces instead of tab
set tabstop=2 " number of spaces that a tab counts for
set softtabstop=2 " number of spaces that a tab counts
set splitbelow " splitting a window will put the new window below :sp
set splitright " splitting a window will put the new window right :vsp
set shortmess+=I " don't show the intro message starting Vim
set hidden " edit several files in the same time
set laststatus=2  " always display the status line
set history=1000 " store lots of history entries
set backspace=indent,eol,start " backspacing settings
set nobackup " don't create backups
set noswapfile " don't create swap files
autocmd VimResized * :wincmd = " automatically rebalance windows on vim resize
"set scrolloff=6
"Color theme
  set t_Co=256
  colorscheme solarized
  set background=light
"Ignore following files when completing file/directory names
  set wildignore+=.hg,.git,.svn
  set wildignore+=*.pyc
  set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg
"Search
  set incsearch
  set hlsearch
  set ignorecase
  set smartcase
  set gdefault


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"   Shortcuts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader = ","

" Clear the search highlight
nnoremap <silent> <Esc><Esc> :nohlsearch<CR><Esc>

"Disable <Arrow keys>
  inoremap <Up> <NOP>
  inoremap <Down> <NOP>
  inoremap <Left> <NOP>
  inoremap <Right> <NOP>
  noremap <Up> <NOP>
  noremap <Down> <NOP>
  noremap <Left> <NOP>
  noremap <Right> <NOP>

"Navigate with <Ctrl>-hjkl in Insert mode
  imap <C-h> <C-o>h
  imap <C-j> <C-o>j
  imap <C-k> <C-o>k
  imap <C-l> <C-o>l

"Switch splits
  nmap <C-h> <C-W>h
  nmap <C-j> <C-W>j
  nmap <C-k> <C-W>k
  nmap <C-l> <C-W>l

"Navigate through wrapped lines
  "noremap j gj
  "noremap k gk

"Show buffers
  nmap <Leader>bl :ls<cr>:b
"Split buffer
  nmap <Leader>bs :ls<cr>:vert sb
"Go to prev buffer
  nmap <Leader>bp :bp<cr>
"Go to next buffer
  nmap <Leader>bn :bn<cr>

"Auto change directory to match current file ,cd
  nnoremap ,cd :cd %:p:h<CR>:pwd<CR>

"Toggle background
  map <F2> :let &background = ( &background == "dark"? "light" : "dark" ) <CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"   Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"CtrlP
  let g:ctrlp_map = '<c-p>'
  let g:ctrlp_cmd = 'CtrlP'

"NERDTree
  nmap <Bs> :NERDTreeToggle<CR>
  let NERDTreeShowBookmarks=1
  let NERDTreeChDirMode=2
  let NERDTreeQuitOnOpen=1
  "let NERDTreeShowHidden=1
  let NERDTreeKeepTreeInNewTab=0
  "Disable display of the 'Bookmarks' label and 'Press ? for help' text
  let NERDTreeMinimalUI=1
  "Use arrows instead of + ~ chars when displaying directories
  let NERDTreeDirArrows=1
  let NERDTreeBookmarksFile= $HOME . '/.vim/.NERDTreeBookmarks'

"Tabular
  nmap <Leader>a= :Tabularize /=<CR>
  vmap <Leader>a= :Tabularize /=<CR>
  nmap <Leader>a: :Tabularize /:\zs<CR>
  vmap <Leader>a: :Tabularize /:\zs<CR>

"IndentLine
  "let g:indentLine_color_term = 192
  let g:indentLine_char = '│'
  let g:indentLine_enabled = 0
  map <F3> :IndentLinesToggle <CR>
