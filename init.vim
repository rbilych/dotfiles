"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"   VimPlug
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.local/share/nvim/plugged')

" Colorschemes, syntax & hightlighting
Plug 'chriskempson/base16-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'sheerun/vim-polyglot'
Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-endwise'

" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'Xuyuanp/nerdtree-git-plugin'

" Utils
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'tpope/vim-surround'
Plug 'tomtom/tcomment_vim'
Plug 'mattn/emmet-vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'ctrlpvim/ctrlp.vim'
Plug 'ngmy/vim-rubocop'
Plug 'tpope/vim-repeat'
Plug 'qpkorr/vim-bufkill'
Plug 'bronson/vim-trailing-whitespace'
Plug 'easymotion/vim-easymotion'
Plug 'duggiefresh/vim-easydir'
Plug 'terryma/vim-multiple-cursors'
Plug 'ryanoasis/vim-devicons' "Fonts: https://github.com/ryanoasis/nerd-fonts

" Snippets
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'
Plug 'honza/vim-snippets'

call plug#end()


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"   Settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Tabulation - 2 spaces no tab
set shiftwidth=2 " number of spaces to use for each step of (auto)indent
set expandtab " use spaces instead of tab
set tabstop=2 " number of spaces that a tab counts for
set softtabstop=2 " number of spaces that a tab counts

set colorcolumn=80 " show 80 column
set number " show numbers
set relativenumber " show relative numbers
set encoding=utf-8 " default encoding
set fileformat=unix " add lf in the end of file
set wildmenu " enhance command-line completion
set wildmode=list:longest,full " set completion mode
set linebreak " don't break words when wrapping
set splitbelow " splitting a window will put the new window below :sp
set splitright " splitting a window will put the new window right :vsp
set hidden " edit several files in the same time
autocmd VimResized * :wincmd = " automatically rebalance windows on vim resize

"Color theme
syntax enable
set t_Co=256
if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif
set background=dark


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"   Shortcuts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" jj to ESC
imap jj <Esc>

" Leader
let mapleader = ","

"Save file
map <Leader>s :w<CR>

"Indent all file
map <Leader>i mmgg=G`m

" Clear the search highlight
nnoremap <silent> <Esc><Esc> :nohlsearch<CR><Esc>
nnoremap <silent> <Leader><space> :nohlsearch<CR><Esc>

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

"Navigate through wrapped lines
noremap j gj
noremap k gk

"Buffers
nmap <Leader>bl :ls<cr>:b
nmap <Leader>bs :ls<cr>:vert sb
nmap <Leader>bp :bp<cr>
nmap <Leader>bn :bn<cr>
nmap <Leader>bd :BD<cr>

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


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"   Plugins settins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDTree
nmap <Bs> :NERDTreeToggle<CR>
let NERDTreeShowBookmarks=1
let NERDTreeChDirMode=2
let NERDTreeQuitOnOpen=1
let NERDTreeKeepTreeInNewTab=0
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1

" Airline
let g:airline_theme='base16'
let g:airline_powerline_fonts = 1

" Vim-fugitive
nmap <Leader>g :Gblame<CR>

" TComment
nmap <Leader>c :TComment<CR>
vmap <Leader>c :TComment<CR>

" Emmet
let g:user_emmet_install_global = 0
autocmd FileType html,css,scss,eruby EmmetInstall
imap <expr> <Leader>e emmet#expandAbbrIntelligent("\<tab>")

" Deoplete
let g:deoplete#enable_at_startup = 1

" CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_custom_ignore = 'node_modules\|git\|log\|tmp'

" Rubocop
let g:vimrubocop_keymap = 0
nmap <Leader>r :RuboCop<CR>

" Easymotion
map <Leader>; <Plug>(easymotion-overwin-f)
let g:EasyMotion_startofline = 0

" Multiple cursors
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-b>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'

" NeoSnippet
let g:neosnippet#enable_snipmate_compatibility = 1
" let g:neosnippet#snippets_directory='~/.snippets'
imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
      \ "\<Plug>(neosnippet_expand_or_jump)"
      \: pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
      \ "\<Plug>(neosnippet_expand_or_jump)"
      \: "\<TAB>"
