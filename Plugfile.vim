call plug#begin('~/.dotfiles/vim/plugged')

Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'rking/ag.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'scrooloose/nerdtree'
Plug 'tsony-tsonev/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'tomtom/tcomment_vim'
Plug 'wakatime/vim-wakatime'
Plug 'maksimr/vim-jsbeautify'
Plug 'bcicen/vim-jfmt'
Plug 'mattn/emmet-vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-eunuch'
Plug 'Yggdroot/indentLine'
Plug 'alvan/vim-closetag'
Plug 'ap/vim-css-color'
Plug 'elixir-editors/vim-elixir'
Plug 'tpope/vim-rails'
Plug 'dhruvasagar/vim-buffer-history'
Plug 'ConradIrwin/vim-bracketed-paste'
Plug 'christoomey/vim-tmux-navigator'
Plug 'metakirby5/codi.vim'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'ntpeters/vim-better-whitespace'
Plug 'derekstavis/yanklight.vim'

Plug 'tpope/vim-dispatch'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'epilande/vim-es2015-snippets'
Plug 'epilande/vim-react-snippets'
Plug 'jacobsmith/vim-react-refactor'
Plug 'Shougo/vimproc.vim'

" Plugins to git
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'ruanyl/vim-gh-line'

" A collection of language packs for Vim.
Plug 'sheerun/vim-polyglot'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'othree/yajs'
Plug 'jparise/vim-graphql'
Plug 'chemzqm/vim-jsx-improve'
Plug 'Matt-Deacalion/vim-systemd-syntax'

Plug 'w0rp/ale'

call plug#end()



