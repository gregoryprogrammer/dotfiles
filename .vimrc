set nocompatible

" 1. Install plugin manager
" 2. source %
" 3. PlugInstall
" 4. Vim long and prosper
"
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

call plug#begin('~/.vim/plugged')

" My custom vim files
Plug 'gregoryprogrammer/delorean.vim'

" Editor & project managment
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'
Plug 'mileszs/ack.vim'
Plug 'jlanzarotta/bufexplorer'
Plug 'bronson/vim-trailing-whitespace'
Plug 'vim-scripts/a.vim'
Plug 'majutsushi/tagbar'
Plug 'junegunn/fzf', { 'dir': '~/.fzf' }
Plug 'markonm/traces.vim'
Plug 'octol/vim-cpp-enhanced-highlight'

" Snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" Git integration
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" Python
Plug 'Vimjas/vim-python-pep8-indent'

" Haxe
Plug 'jdonaldson/vaxe'

" Rust
Plug 'rust-lang/rust.vim'

" QML
Plug 'peterhoeg/vim-qml'

" OpenGL & GLSL
"Plug 'beyondmarc/opengl.vim'
Plug 'tikhomirov/vim-glsl'

" Theme
Plug 'morhetz/gruvbox'
Plug 'itchyny/lightline.vim'

" Other
Plug 'vim/killersheep'

call plug#end()

let mapleader = "\<Space>"
set shell=/bin/bash
filetype plugin indent on

" .-------.
" | Theme |
" '-------'
"
set t_Co=256
set termguicolors
set background=dark
syntax on

let g:gruvbox_italic = 0
let g:gruvbox_invert_selection = 0
colorscheme gruvbox

set guifont=Terminus\ (TTF)\ for\ Windows\ 9

" Turn off scrollbars
set guioptions-=r  " remove right-hand scroll bar
set guioptions-=L  " remove left-hand scroll bar
set guioptions-=m  " remove menubar
set guioptions-=T  " remove toolbar

" Special treatment for some file extensions
au BufRead,BufNewFile *.as  set filetype=actionscript
au BufRead,BufNewFile *.asm set filetype=nasm

let python_highlight_all = 1

" Default haxe target
"let g:vaxe_lime_target = "linux -neko -64"
let g:vaxe_enable_airline_defaults = 0

" toggle relative numbering, and set to absolute on loss of focus or insert mode
set number
set relativenumber

augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave,WinEnter * set relativenumber
    autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * set norelativenumber
augroup END

" Backspace deletes like most programs in insert mode
set backspace=2

set nobackup
set noswapfile
set autowrite
set autoread
au CursorHold * checktime
set encoding=utf-8
set fileformat=unix
set fillchars+=vert:\ 

set ruler
set showcmd
set textwidth=0
set nowrap
set wrapmargin=0

set smartindent
set cindent
set cinoptions=g-0,N-s,t0
set autoindent
set smarttab
set expandtab

set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround

set incsearch
set showmatch
" set ignorecase
set smartcase
set hlsearch
set mouse=a

set timeoutlen=500
set lazyredraw

" Open new split panes to right and bottom
set splitbelow
set splitright

" Always use vertical diffs
set diffopt+=vertical

set laststatus=2
set showtabline=1
set noshowmode

" set nofoldenable
set foldmethod=indent
" Unfold all on begin
set foldlevel=99

set wildchar=<Tab>
set wildmenu
set wildmode=full

set clipboard=unnamed

set list listchars=space:·,tab:<-,trail:·,extends:»,precedes:«,nbsp:×

let g:ackhighlight = 1
let g:ackprg ='ag --nogroup --nocolor --column'

autocmd FileType make setlocal noexpandtab

autocmd BufWritePost * GitGutter
let g:gitgutter_realtime = 1
set updatetime=100

let g:NERDSpaceDelims = 1
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1

let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

let g:NERDTreeDirArrowExpandable = '│'
let g:NERDTreeDirArrowCollapsible = '→'

let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "•",
    \ "Staged"    : "+",
    \ "Untracked" : "*",
    \ "Renamed"   : "»",
    \ "Unmerged"  : "=",
    \ "Deleted"   : "-",
    \ "Dirty"     : "✘",
    \ "Clean"     : "■",
    \ 'Ignored'   : '!',
    \ "Unknown"   : "?"
    \ }

let g:closetag_filenames = "*.html,*.vue,*.xhtml,*.phtml,*.php,*.jsx"

" Close vim if the only window left open is a NERDTree
autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let g:user_emmet_leader_key='<C-Y>'
