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

" Utils
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'tpope/vim-surround'
Plug 'tomtom/tcomment_vim'
Plug 'mattn/emmet-vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-repeat'
Plug 'qpkorr/vim-bufkill'
Plug 'bronson/vim-trailing-whitespace'
Plug 'easymotion/vim-easymotion'
Plug 'duggiefresh/vim-easydir'
Plug 'ryanoasis/vim-devicons'

" Snippets
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'

call plug#end()


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"   Settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Tabulation - 4 spaces no tab
set shiftwidth=4 " number of spaces to use for each step of (auto)indent
set tabstop=4 " number of spaces that a tab counts for
set softtabstop=4 " number of spaces that a tab counts
set expandtab " use spaces instead of tab
set smartindent
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
set scrolloff=8
set signcolumn=yes
set noswapfile
set nohlsearch
autocmd VimResized * :wincmd = " automatically rebalance windows on vim resize
let g:python3_host_prog = '/usr/bin/python3' " python3 path

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
let g:ctrlp_custom_ignore = 'node_modules\|git\|tmp'

" Easymotion
map <Leader>; <Plug>(easymotion-overwin-f)
let g:EasyMotion_startofline = 0

" NeoSnippet
let g:neosnippet#enable_snipmate_compatibility = 1
"let g:neosnippet#snippets_directory='~/.config/snippets'
imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
            \ "\<Plug>(neosnippet_expand_or_jump)"
            \: pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
            \ "\<Plug>(neosnippet_expand_or_jump)"
            \: "\<TAB>"
