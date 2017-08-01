if exists('g:vundle_installing_plugins')
  Plugin 'Quramy/tsuquyomi'
  
  nnoremap <leader>i :TsuImport<space>
  
  finish
endif

let g:tsuquyomi_completion_detail = 1
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:tsuquyomi_disable_quickfix = 1
let g:syntastic_typescript_checkers = ['tsuquyomi']
