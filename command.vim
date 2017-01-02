" Sudo write
comm! W exec 'w !sudo tee % > /dev/null' | e!

" Split view
noremap <leader>v <C-w>v
noremap <leader>b <C-w>S
nnoremap <silent> <leader>= :exe "vertical resize +5"<CR>
nnoremap <silent> <leader>- :exe "vertical resize -5"<CR>
nnoremap <leader>0 <C-w>=

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
noremap <leader><Left> <C-w>h
noremap <leader><Down> <C-w>j
noremap <leader><Up> <C-w>k
noremap <leader><Right> <C-w>l

" Create windows
noremap <leader>v <C-w>v<C-w>l
noremap <leader>m <C-w>s<C-w>j
noremap <leader>d <C-w>q

" Move a line of text using ALT+[jk] or Comamnd+[jk] on mac
nmap <leader>j mz:m+<cr>`z
nmap <leader>k mz:m-2<cr>`z
vmap <leader>j :m'>+<cr>`<my`>mzgv`yo`z
vmap <leader>k :m'<-2<cr>`>my`<mzgv`yo`z

" Save a file as root (,W)
noremap <leader>W :w !sudo tee % > /dev/null<CR>
