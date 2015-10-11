"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"   Vundle
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/vundle'

" MY BUNDLE
"""""""""""""""""""""""""""""""""""""""""
" For terminal colors use
" https://github.com/Anthony25/gnome-terminal-colors-solarized
Plugin 'altercation/vim-colors-solarized'
Plugin 'Lokaltog/vim-powerline'
Plugin 'sheerun/vim-polyglot'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'tpope/vim-repeat'
Plugin 'qpkorr/vim-bufkill'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'kien/ctrlp.vim'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdcommenter'
Plugin 'godlygeek/tabular'

"Ruby/Rails
Plugin 'tpope/vim-endwise'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'
Plugin 'ngmy/vim-rubocop'
""""""""""""""""""""""""""""""""""""""""
call vundle#end()             " required
filetype plugin indent on     " required


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"   Settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set colorcolumn=80 " show 80 column
set number " show numbers
set relativenumber " show relative numbers
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
"Color theme
set t_Co=256
colorscheme solarized
set background=dark
"Search
set incsearch
set hlsearch
set ignorecase
set smartcase
set gdefault
" Ignore stuff that can't be opened
set wildignore+=tmp/**
set wildignore+=.git


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
"Ctrl-t to new tab
map <C-t> <esc>:tabnew<CR>
"Toggle background
map <F2> :let &background = ( &background == "dark"? "light" : "dark" ) <CR>
"Navigate through wrapped lines
noremap j gj
noremap k gk
"Buffers
nmap <Leader>bl :ls<cr>:b
nmap <Leader>bs :ls<cr>:vert sb
nmap <Leader>bp :bp<cr>
nmap <Leader>bn :bn<cr>
nmap <Leader>bd :BD<cr>
"Save file
map <Leader>s :w<CR>
"Indent all file
map <Leader>i mmgg=G`m
"Paste from clipbord; Need vim-gtk installed
map <Leader>p :set paste<CR>o<esc>"*]p:set nopaste<cr>
" :Q = :q ...
command! Q q
command! E e

"Rename current file
function! RenameFile()
  let old_name = expand('%')
  let new_name = input('New file name: ', expand('%'), 'file')
  if new_name != '' && new_name != old_name
    exec ':saveas ' . new_name
    exec ':silent !rm ' . old_name
    redraw!
  endif
endfunction
map <Leader>n :call RenameFile()<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"   Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

"Tabular
nmap <Leader>a= :Tabularize /=<CR>
vmap <Leader>a= :Tabularize /=<CR>
nmap <Leader>a: :Tabularize /:\zs<CR>
vmap <Leader>a: :Tabularize /:\zs<CR>

"Rubocop
let g:vimrubocop_keymap = 0
nmap <Leader>r :RuboCop<CR>
