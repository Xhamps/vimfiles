if exists('g:vundle_installing_plugins')
  Plugin 'Quramy/vim-js-pretty-template'
  finish
endif

autocmd FileType typescript JsPreTmpl html
autocmd FileType typescript syn clear foldBraces
