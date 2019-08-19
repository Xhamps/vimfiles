" ---------------------------------------------
" Regular Vim Configuration (No Plugins Needed)
" From Jeremy Mack, http://git.io/NlnPFw
" ---------------------------------------------

let mapleader = " "

" ---------------
" Color
" ---------------
set background=dark
colorscheme dracula
highlight Normal ctermbg=None
set cursorline
highlight CursorLine term=bold cterm=bold guibg=Grey40

" Force 256 color mode if available
if $TERM =~ "-256color"
  set t_Co=256
endif

" -----------------------------
" File Locations
" -----------------------------
set backupdir=~/.vim/.backup
set directory=~/.vim/.tmp
set spellfile=~/.vim/spell/custom.en.utf-8.add
" Persistent Undo
if has('persistent_undo')
  set undofile
  set undodir=~/.vim/.undo
endif

" ---------------
" UI
" ---------------
set ruler          " Ruler on
set number         " Line numbers on
set nowrap         " Line wrapping off
set laststatus=2   " Always show the statusline
set cmdheight=2    " Make the command area two lines high
set noshowmode     " Don't show the mode since Powerline shows it
set title          " Set the title of the window in the terminal to the file
set smartindent    " Smart ident on
set noswapfile
set visualbell

" Disable tooltips for hovering keywords in Vim
if exists('+ballooneval')
  " This doesn't seem to stop tooltips for Ruby files set no ballooneval
  " 100 second delay seems to be the only way to disable the tooltips
  set balloondelay=100000
endif

" ---------------
" Behaviors
" ---------------
syntax enable
set backup             " Turn on backups
set autoread           " Automatically reload changes if detected
set wildmenu           " Turn on WiLd menu
set hidden             " Change buffer - without saving
set history=768        " Number of things to remember in history.
set cf                 " Enable error files & error jumping.
set clipboard+=unnamed " Yanks go on clipboard instead.
set autowrite          " Writes on make/shell commands
set ttimeout
set ttimeoutlen=100    " Time to wait for a command (after leader for example).
set foldmethod=indent
set foldlevelstart=99
set formatoptions=crql
set iskeyword+=\$,-   " Add extra characters that arevalid parts of variables
set nostartofline      " Don't go to the start of the lineafter some commands
set scrolloff=3        " Keep three lines below the last line when scrolling
set gdefault           " this makes search/replace global by default
set switchbuf=useopen  " Switch to an existing buffer if one exists

" ---------------
" Text Format
" ---------------
set tabstop=2
set backspace=indent,eol,start " Delete everything with backspace
set shiftwidth=2 " Tabs under smart indent
set shiftround
set cindent
set autoindent
set smarttab
set expandtab
set fileencoding=utf-8
set encoding=utf-8
set pastetoggle=<F12>

" ---------------
" Searching
" ---------------
set ignorecase " Case insensitive search
set smartcase  " Non-case sensitive search
set incsearch  " Incremental search
set hlsearch   " Highlight search results
set wildignore+=*.o,*.obj,*.exe,*.so,*.dll,*.pyc,.svn,.hg,.bzr,.git,
      \.sass-cache,*.class,*.scssc,*.cssc,sprockets%*,*.lessc,*/node_modules/*,
      \rake-pipeline-*

" ---------------
" Visual
" ---------------
set showmatch   " Show matching brackets.
set matchtime=2 " How many tenths of a second to blink
" Show invisible characters
set nolist

" Show trailing spaces as dots and carrots for extended lines.
" From Janus, http://git.io/PLbAlw

" Reset the listchars
set listchars=""
"make tabs visible
set listchars=tab:▸▸
" show trailing spaces as dots
set listchars+=trail:•
" The character to show in the last column when wrap is off and the line continues beyond the right of the screen
set listchars+=extends:>
" The character to show in the last column when wrap is off and the line
" continues beyond the right of the screen
set listchars+=precedes:<

" ---------------
" Sounds
" ---------------
set noerrorbells
set novisualbell
set t_vb=

" ---------------
" Mouse
" ---------------
set mousehide  " Hide mouse after chars typed
set mouse=a    " Mouse in all modes

" Better complete options to speed it up
set complete=.,w,b,u,U

" Config Plugin Airline
"
let g:airline_powerline_fonts = 1
let g:airline_symbols_ascii = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tmuxline#enabled = 0
let g:airline_theme='violet'

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
" testing rounded separators (extra-powerline-symbols):

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_left_sep = "\ue0b0"
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_right_sep = "\ue0b2"
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.maxlinenr = '㏑'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = 'Ɇ'
let g:airline_symbols.whitespace = 'Ξ'


" Config Plugin Ag
"
let g:ag_working_path_mode="r"

" Config Plugin CloseTag
"
let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.html.erb"

" Config NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

let g:NERDTreeShowBookmarks = 1
let g:NERDTreeChDirMode = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeNaturalSort=1
let g:NERDTreeGitStatusWithFlags = 0
let g:NERDTreeGitStatusNodeColorization = 1
let g:NERDTreeColorMapCustom = {
      \ "Modified"  : "#528AB3",
      \ "Staged"    : "#538B54",
      \ "Untracked" : "#BE5849",
      \ "Dirty"     : "#299999",
      \ "Clean"     : "#87939A",
      \ "Ignored"   : "#808080"
      \ }


" Close Vim if NERDTree is the last buffer
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

let g:indentLine_char = '▏'

" Plugin WebdevIcons
let g:webdevicons_enable = 1
let g:webdevicons_enable_nerdtree = 1
let g:WebDevIconsUnicodeGlyphDoubleWidth = 0

if exists('g:loaded_webdevicons')
  call webdevicons#refresh()
endif
