function! RefreshBuffer()
    set noconfirm
    silent! bufdo e!
    set confirm
endfunction

nnoremap <Leader>q :q<cr>
nnoremap <Leader>Q :q!<cr>

nnoremap <Leader>fs :w<cr>
nnoremap <Leader>fe :Explore<cr>

" Kill buffer
nnoremap <Leader>fk :bp\|bd #<cr>
nnoremap <Leader>fn :vnew<cr>
nnoremap <Leader>fN :new<cr>

" Switch header <-> source
nnoremap <Leader>fa :A<cr>

" Format code
nnoremap <Leader>jf :Autoformat<cr>
nnoremap <F3> :Autoformat<cr>

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files theme=ivy<cr>
nnoremap <leader>fg <cmd>Telescope live_grep theme=ivy<cr>
nnoremap <leader>fb <cmd>Telescope buffers theme=ivy<cr>
nnoremap <leader>fh <cmd>Telescope help_tags <cr>
nnoremap <leader>fo :BufExplorer<cr>

nnoremap <Leader>ft :NERDTreeFocus<cr>
nnoremap <Leader>fT :NERDTreeToggle<cr>
nnoremap <Leader>fr :NERDTreeRefreshRoot<cr>
nnoremap <Leader>fl :NERDTreeFind<cr>

nnoremap <leader>tn :tabnew<cr>
nnoremap <leader>tn :tabnew<cr>
nnoremap <leader>tc :tabclose<cr>
nnoremap <leader>tt :tabs<cr>

" Buffer
nnoremap <Leader>br :call RefreshBuffer()<cr>

" .-----.
" | Git |
" '-----'
"
nnoremap <Leader>gp :GitGutterPreviewHunk<CR>
nnoremap <Leader>gH :GitGutterPrevHunk<CR>
nnoremap <Leader>gh :GitGutterNextHunk<CR>
nnoremap <Leader>gu :GitGutterUndoHunk<CR>
nnoremap <Leader>gg :GitGutterStageHunk<CR>
nnoremap <Leader>gd :Git diff<CR>
nnoremap <leader>gs <cmd>Telescope git_status <cr>
nnoremap <leader>fo :BufExplorer<cr>
nnoremap <Leader>gb :Git blame<CR>
nnoremap <Leader>gq :pclose<CR>



"  .--------------------------------------------------------------------------.
"  |                                                                          |
"  |                                   Tabs                                   |
"  |                                                                          |
"  '--------------------------------------------------------------------------'

" Go to tab by number
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 :tablast<cr>

" nnoremap <Leader>ft :TagbarOpenAutoClose<cr>
" nnoremap <Leader>fT :TagbarToggle<cr>
" nnoremap <Leader>fy :TagbarTogglePause<cr>

" Window operations
nnoremap <Leader>wv :vsplit<cr>
nnoremap <Leader>ws :split<cr>
" Closes current window
nnoremap <Leader>wc <c-w>c<cr>
" Closes other windows
nnoremap <Leader>wo <c-w>o<cr>
" Moves the current window to the right
nnoremap <Leader>wr <c-w>r<cr>
" Turn on diff between visible windows
nnoremap <Leader>wd :windo diffthis<cr>
" Turn off diff
nnoremap <Leader>wD :diffoff!<cr>

" Sizing windows
nnoremap <Leader>w= <c-w>=<cr>
nnoremap <Leader>wl <c-w>10>
nnoremap <Leader>wh <c-w>10<

noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

set pastetoggle=<F6>
nmap <Tab> <C-w>w


inoremap jj <ESC>

" Move lines downward and upward
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" Replace ; with :, and : with ;
nnoremap ; :
nnoremap : ;

vnoremap ; :
vnoremap : ;

" Proper line up and line down when line wrapped
nnoremap j gj
nnoremap k gk

" Remove all trailing whitespace
nnoremap <Leader>js :%s/\s\+$//e<cr>

"  .--------------------------------------------------------------------------.
"  |                                                                          |
"  |                          Search, grep, manual                            |
"  |                                                                          |
"  '--------------------------------------------------------------------------'
"

" Disable (cancel) highlight of the search
nnoremap <silent> <Leader>sq :noh<cr><esc>:cclose<cr>

" Search for the word under cursor and jump back
nnoremap <silent> <Leader>sw *``
nnoremap <silent> <Leader>sW #``

nnoremap <Leader>sa :Ack! <cword><cr>
noremap K :!man 3 <cword><cr><esc>

"  .--------------------------------------------------------------------------.
"  |                                                                          |
"  |                               Code frame                                 |
"  |                                                                          |
"  '--------------------------------------------------------------------------'
"
autocmd FileType c,cpp nnoremap <Leader>cf :.-1read !,code-frame.py --lang cpp --text <cword><cr>
autocmd FileType c,cpp vnoremap <Leader>cf y:.-1read !,code-frame.py --lang cpp --text "<c-r>""<cr>

autocmd FileType bash,python nnoremap <Leader>cf :.-1read !,code-frame.py --lang bash --text <cword><cr>
autocmd FileType bash,python vnoremap <Leader>cf y:.-1read !,code-frame.py --lang bash --text "<c-r>""<cr>

autocmd FileType c,cpp nnoremap <Leader>ct O// TODO(gregory) <esc><S-A>

" Copy & paste to system clipboard with <Space>p and <Space>y:
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P

" Magic trick to prevent speed fingers most vexing mistake
map q: :q

" automatically jump to end of text you pasted:
vnoremap <silent> y y`]
vnoremap <silent> p p`]
nnoremap <silent> p p`]

" Move between windows
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-L> <C-W><C-L>

"  .--------------------------------------------------------------------------.
"  |                                                                          |
"  |                               Code format                                |
"  |                                                                          |
"  '--------------------------------------------------------------------------'
"
nnoremap <Leader>lj :%!python3 -m json.tool --indent 2<CR>

" .---------------.
" | YouCompleteMe |
" '---------------'
"

nnoremap <Leader>yg :YcmCompleter GoTo<cr>
nnoremap <Leader>yt :YcmCompleter GetType<cr>

" Map Alt-k (M-k) to ^[k
" execute "set <m-k>=\ek"
" Format code with clang-format, only for cpp
" autocmd Filetype c,cpp map <m-k> :pyf /usr/share/clang/clang-format.py<cr>
" autocmd Filetype c,cpp imap <m-k> <c-o>:pyf /usr/share/clang/clang-format.py<cr>
