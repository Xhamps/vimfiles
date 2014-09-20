" Sudo write
comm! W exec 'w !sudo tee % > /dev/null' | e!

" Edit and load vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

noremap <C-s> :w
noremap <C-q> :q<cr>
noremap <C-z> u

if has("mac") || has("macunix")
    noremap <D-s> :w
endif

noremap <leader>t :tabnew<cr>
noremap <leader>e :tabedit<cr>
noremap <leader>c :tabclose<cr>
noremap <leader>n :tabnext<cr>
noremap <leader>p :tabprevious<cr>

" Go to start of line with H and to the end with $
nnoremap H ^
nnoremap L $

" Move around easily
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

" Create windows
noremap <leader>v <C-w>v<C-w>l
noremap <leader>m <C-w>s<C-w>j
noremap <leader>d <C-w>q

" Move a line of text using ALT+[jk] or Comamnd+[jk] on mac
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

if has("mac") || has("macunix")
    nmap <D-j> <M-j>
    nmap <D-k> <M-k>
    vmap <D-j> <M-j>
    vmap <D-k> <M-k>
endif
