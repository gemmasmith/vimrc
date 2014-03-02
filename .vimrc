" prevents backwards compatibility with vi
set nocompatible

" filetypes woohoo - off for vundle
filetype off

" Vundle setup
set rtp+=~/.vim/bundle/vundle
call vundle#rc()

Bundle 'gmarik/vundle'

" BUNDLES!!!! ...with a few tips on their usage
" docs are generally available through the relevant GitHub repo
" (and, when in doubt, Google)

Bundle "vim-scripts/LaTeX-Suite-aka-Vim-LaTeX"

Bundle "Raimondi/delimitMate"
" auto-close brackets, quotes, etc.

" Bundle 'scrooloose/syntastic'
" Syntastic is great but I never got around to figuring out how to
" add more system directories, so we get in fights over Hanson modules

Bundle 'scrooloose/nerdcommenter'
" <map>cs for multi-line comments
" <map>ci to toggle regular comments
" <map>cc to add regular comments (will nest)
" add a number or highlight text to comment the next x lines or portion,
" e.g., 5,cs to comment the next 5 lines

Bundle "ervandew/supertab"
" TAB = AUTOCOMPLETE. YAY.
" the SuperTabMappingForward, SuperTabMappingBackward, and
" SuperTabMappingLiteral settings let you change the mappings

Bundle 'tpope/vim-fugitive'
" Git in Vim!
" :Gstatus for Git status
" :Gcommit <-m message> to commit

Bundle 'tpope/vim-surround'
" shortcuts for adding/changing quotes, brackets, and other surroundings

Bundle "scrooloose/nerdtree"
" easy file/directory navigation!!!
" :NERDTree to open it up
" m to add/delete/copy/rename files and directories
" C to make the dir under the cursor as the top directory
" r to refresh (R to refresh root)

Bundle "terryma/vim-multiple-cursors"
" be everywhere at once!
" <Ctrl>-N to select subsequent instances of the current word
" (and then use 'i', 'cw', etc. as you like)

Bundle "a.vim"
" toggle between header/source files (even if they don't exist yet!)
" :A to toggle
" :AS/:AV to toggle and split the window horizontally/vertically

Bundle "flazz/vim-colorschemes"
Bundle "chriskempson/vim-tomorrow-theme"
Bundle "tpope/vim-vividchalk"
" some colorschemes

" filetypes need to be turned on and comment editing changed
" HERE for things to work properly
filetype plugin indent on
au FileType * setlocal fo-=cro

" search options
set incsearch       " start searching immediately
set nohlsearch      " don't highlight searches (ew)
set ignorecase      " default to case-insensitive
set smartcase       " case sensitive when search includes caps
set matchtime=5     

" indentation options, because auto-indenting is MAGIC
set smarttab
set autoindent
set smartindent
set cindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set shiftround
set preserveindent

" c/c++ indentation
au FileType,BufNewFile,BufRead c,cpp setlocal tabstop=8
au FileType,BufNewFile,BufRead c,cpp setlocal softtabstop=8
au FileType,BufNewFile,BufRead c,cpp setlocal shiftwidth=8

" woohoo SYNTAX COLOURS
syntax on
set showmatch
set background=dark
colorscheme desert

" bye-bye annoying error sounds!
set noerrorbells
set visualbell
set t_vb=

" navigation...
set backspace=indent,eol,start
set whichwrap+=<,>,[,]
set ch=2
set history=100                 " remember stuff
set undolevels=100              " remember more stuff
set number                      " LINE NUMBERS
set numberwidth=4
set columns=84
set lines=178
set ruler                       " show the current location in the command-line
set scrolloff=2                 " keep some context visible
set showmode
set cmdheight=2                 " bigger command-line
" set nomousehide               " uncomment if you're using a touchpad
                                " and it's driving you insane

" file navigation...
set autoread                    " update the file in Vim if it changes outside
set wildmode=longest:full       " (better) autocompletion for file names
set wildmenu                    " in the command-line!
set hidden                      " keep buffers open in the background
set lazyredraw
set noswapfile                  " swap files and backups get annoying
set nobackup                    " ...use version control instead!
set laststatus=2                " command-line statuses in ALL the windows
set switchbuf=useopen           " jump to the requested buffer if it's open
set eol                         " automatically add an EOL in non-binary files

" encoding...
set encoding=utf-8
set termencoding=utf-8

" limits width for c and c++ files
highlight Overlength ctermbg=red ctermfg=white guibg=#592929
match Overlength /\%81v.\+/

" mappings and abbreviations
let mapleader = ","
inoremap jj <Esc>           " jj exits insert mode if typed quickly
map <Ctrl>w<down> <Ctrl>wj  " more window nav shortcuts
map <Ctrl>w<up> <Ctrl>wk
"inoremap ,, <Tab>           " ,, works as a tab in insert mode if typed quickly
map sv :source ~/.vimrc
map gv :source ~/.gvimrc
map spv :split ~/.vimrc
map ev :e ~/.vimrc
map eg :e ~/.gvimrc

" more bits and pieces
set tags=tags;/             " some day I'll actually learn how to use tags
set nomodeline

" Bundle settings
" NERDCommenter
let NERDSpaceDelims=1       " spaces! in comments! YAY!
" NERDTree
let NERDTreeChDirMode=2     " use the top dir in NERDTree as the working dir
let NERDTreeShowHidden=0    " don't show hidden files ('I' toggles this)
" DelimitMate
let delimitMate_expand_cr=1
" Syntastic
" let syntastic_cpp_checkers=["gcc.vim"]    " uncomment if you add Syntastic

" For 40-HW9 (syntax colours, etc.)
au BufNewFile,BufRead *.ums,*.um set filetype=ums


