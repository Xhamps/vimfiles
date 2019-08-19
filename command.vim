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
noremap <leader>h <C-w>h
noremap <leader><Down> <C-w>j
noremap <leader>j <C-w>j
noremap <leader><Up> <C-w>k
noremap <leader>k <C-w>k
noremap <leader><Right> <C-w>l
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

" Save a file as root (,W)
noremap <leader>W :w !sudo tee % > /dev/null<CR>

" Fzf
command! -bang -nargs=? -complete=dir GFiles
  \ call fzf#vim#gitfiles(<q-args>, fzf#vim#with_preview(), <bang>0)
nnoremap <leader>p :GFiles<cr>

command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview('up:60%')
  \           : fzf#vim#with_preview('right:50%:hidden', '?'),
  \   <bang>0)
nnoremap <leader>f :Rg<cr>

" Ag
nnoremap <leader>fs :Ag!<cr>

" Buffer maps
nnoremap <leader>bl :Buffers<cr>
nnoremap <leader>bd :bdelete<cr>
noremap <leader>bb :BufferHistoryBack<CR>
noremap <leader>bf :BufferHistoryForward<CR>

" NERDTree
map <Space><Space> :NERDTreeToggle<CR>

" Git maps
nnoremap <leader>gf :GFiles!?<cr>
nnoremap <leader>gc :Commits!<cr>
nnoremap <leader>gbc :BCommits!<cr>

" Toggle to comment the line
map <leader>/ :TComment<cr>

" Automatically format js
map <Leader><C-f> :call JsBeautify()<cr>

" Rails
nnoremap <leader>e   :E
nnoremap <leader>emm :Emodel<space>
nnoremap <leader>evv :Eview<space>
nnoremap <leader>ecc :Econtroller<space>

nnoremap <leader>eff :Efabricator<space>
nnoremap <leader>ell :Elayout<space>
nnoremap <leader>ela :Elayout<space>
nnoremap <leader>elo :Elocale<space>
nnoremap <leader>elb :Elib<space>
nnoremap <leader>eee :Eenvironment<space>
nnoremap <leader>ehh :Ehelper<space>
nnoremap <leader>eii :Einitializer<space>
nnoremap <leader>ejj :Ejavascript<space>
nnoremap <leader>ess :Espec<space>
nnoremap <leader>esm :Espec models/
nnoremap <leader>esc :Espec controllers/
nnoremap <leader>esv :Espec views/
nnoremap <leader>esl :Espec lib/

