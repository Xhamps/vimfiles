if exists('g:vundle_installing_plugins')
  Plugin 'maksimr/vim-jsbeautify'
  finish
endif

map <Leader><C-f> :call JsBeautify()<cr>


