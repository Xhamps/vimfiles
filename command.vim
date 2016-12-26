" Sudo write
comm! W exec 'w !sudo tee % > /dev/null' | e!

" Edit and load vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

noremap <leader>s :w<cr>
noremap <leader>q :q<cr>
noremap <leader>z u

if has("mac") || has("macunix")
    noremap <leader>s :w
endif

noremap <leader>tt :tabnew<cr>
noremap <leader>te :tabedit<cr>
noremap <leader>tc :tabclose<cr>
noremap <leader>tn :tabnext<cr>
noremap <leader>tp :tabprevious<cr>

" Go to start of line with H and to the end with $
nnoremap H ^
nnoremap L $

" Move around easily
noremap <leader>h <C-w>h
noremap <leader>j <C-w>j
noremap <leader>k <C-w>k
noremap <leader>l <C-w>l

" Create windows
noremap <leader>v <C-w>v<C-w>l
noremap <leader>m <C-w>s<C-w>j
noremap <leader>d <C-w>q

" Move a line of text using ALT+[jk] or Comamnd+[jk] on mac
nmap <leader>j mz:m+<cr>`z
nmap <leader>k mz:m-2<cr>`z
vmap <leader>j :m'>+<cr>`<my`>mzgv`yo`z
vmap <leader>k :m'<-2<cr>`>my`<mzgv`yo`z

"if has("mac") || has("macunix")
"    nmap <D-j> <M-j>
"    nmap <D-k> <M-k>
"    vmap <D-j> <M-j>
"    vmap <D-k> <M-k>
"endif

" Save a file as root (,W)
noremap <leader>W :w !sudo tee % > /dev/null<CR>
