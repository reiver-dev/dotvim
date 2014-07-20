" BASIC STUFF {{{
" ===========

" Disable welcome screen
set shortmess+=I

" Main
set nocompatible

" Disable  backup
set nobackup

" Encoding
set encoding=utf-8                           " Default encoding
set termencoding=utf-8                       " show
set fileencodings=utf-8,cp1251,koi8-r,cp866  " file

" Rus keyboard
set langmenu=none
set keymap=russian-jcukenwin
set iminsert=0           " English by default
set imsearch=-1          " Search keymap from insert mode
if has("pc")
	set iskeyword=@,_,47-58,128-255
endif

set history=400   " Keep some stuff in the history
set ssop-=blank   " dont save blank window
set ssop-=options " dont save options

" Spellchecking
set nospell
set spelllang=en_us,ru_ru

" X-clipboard support
if has('unnamedplus')
    set clipboard+=unnamed " enable x-clipboard
endif

" Term
if &term =~ "xterm"
    set t_Co=256 " set 256 colors
endif

" Buffer options
set hidden      " hide buffers when they are abandoned
set autoread    " auto reload changed files
set autowrite   " automatically save before commands like :next and :make

" }}}


" TEXT APPEARANCE {{{
" ===============

" Syntax highlight
syntax on

" Linebreak
set wrap
set linebreak
set dy=lastline

" Colorscheme
colorscheme xoria256

" Font
if has("unix")
    set guifont=Meslo\ LG\ L\ 9
else
    set guifont=consolas:h10:cRUSSIAN
endif

set listchars=tab:»\ ,trail:·,extends:¬,precedes:¬,nbsp:~
set list

" }}}


" EDITOR APPEARANCE {{{
" =================

set visualbell      " set visual bell -- i hate that damned beeping

set number          " Line numbers
set ruler           " Show the cursor position all the time
set cursorline

set showcmd
set showmode        " Show the current mode
set cmdheight=1     " Command line high

set laststatus=2    " tell VIM to always put a status line in, even if there is only one window

set showtabline=1   " Черточки на табах
set foldcolumn=1    " Колоночка, чтобы показывать плюсики для скрытия блоков кода
set cpoptions=$     " Ending of replacement symbol

set winminheight=0    " minimal window height
set winminwidth=0     " minimal window width
set scrolloff=4       " min 4 symbols bellow cursor
set sidescroll=4
set sidescrolloff=10

set whichwrap=b,s,<,>,[,],l,h
set completeopt=menu,preview
set infercase

" status line
set stl=%f\ %m\ %r\ Line:%l/%L[%p%%]\ Col:%v\ Buf:#%n\ Type:%y\ [%b][0x%B]

" Open help in a vsplit rather than a split
command! -nargs=? -complete=help Help :vertical help <args>
cabbrev h h<C-\>esubstitute(getcmdline(), '^h\>', 'Help', '')<CR>

" }}}

" Search and autocomplete {{{
" =======================

" Search options
set hlsearch        " Highlight search results
set ignorecase      " Ignore case in search patterns
set smartcase       " Override the 'ignorecase' option if the search pattern contains upper case characters
set incsearch       " While typing a search command, show where the pattern
set wrapscan        " set the search scan to wrap lines

" Matching characters
set showmatch       " Show matching brackets
set matchpairs+=<:> " Make < and > match as well

" Make the command-line completion better
set wildmenu
set wildcharm=<TAB>
set wildignorecase

" When completing by tag, show the whole tag, not just the function name
set showfulltag

" }}}

" TEXT BEHAVIOR {{{
" =============

set autoindent      " Autoindent
set smarttab        " Enable nice indent
set expandtab       " Spaces for tabs
set smarttab        " indent using shiftwidth
set shiftwidth=4    " number of spaces to use for each step of indent (indent with << >>)
set tabstop=4       " Tab size
set softtabstop=4   " Insert tab as 4 spaces
set shiftround      " drop unused spaces

set backspace=indent,eol,start " Allow backspace to remove indents, newlines and old tex"

" }}}

" filetype off

" Bundles {{{
" =======
" set rtp+=~/.vim/bundle/vundle
" call vundle#rc()

" Bundle 'gmarik/vundle'

" }}}

filetype plugin indent on
