" VIM documentation quick ref
"   http://vimdoc.sourceforge.net/htmldoc/usr_toc.html
" Options Quick Ref
"   http://vimdoc.sourceforge.net/htmldoc/quickref.html#Q_op
"

" SEARCH
"
" Some are commented out as they cause vim to behave a lot differently from vi.
set hlsearch                   " enable search highlighting
"set ignorecase                 " ignore case sensitivity
"set incsearch                  " incremental search showing partial matches
set noignorecase               " do not ignore case <default>
"set smartcase                  " go case sensitive if query contains a cap

" TEXT RENDERING
"
"set display+=lastine           " always try to show last line of paragraph
"set encoding=utf-8             " use an encoding that supports utf-8
"set linebreak                  " avoid wrapping line in middle of word
"set scrolloff=1                "
"set sidescrolloff=5            " keep n screen columns on left and right
"set wrap                       " enable line wrapping

" USER INTERFACE
"
colorscheme slate              " set the colorscheme
set cursorline                 " underline the current line
set laststatus=2               " display the status bar
"set mouse=a                    " enable mouse usage (all modes)
set number relativenumber      " set line numbering and relative line numbering
set numberwidth=4              " set the number column width to 4
set ruler                      " always show cursor position
"set showcmd                    " show (partial) command in status line.
"set showmatch                  " show matching brackets.
set wildmenu                   " display command line tab completion
"
" PROGRAMMING
"
syntax enable                  " enable syntax highlighting
filetype plugin on
"filetype indent on
"set autowrite                  " automatically save before commands like :next and :make
"set cindent shiftwidth=2       " C indenting
"set formatoptions+=j           " delete comment char when joining lines
"
" MISC
"
"set autoread                   " automatically re-read files if unmodified
"set backspace                  " allow backspace over indent, \n and insertion start
set dir=~/.cache/vim           " dir to store swap files
"set hidden                     " hide buffers when they are abandoned
"set history=1000               " increase command history limit
"set spell                      " enable spell checking
"
autocmd BufWritePre * %s/\s\+$//e   " autoremove trailing whitespace from file on write

if has("autocmd")                   " we want vim to go back to the previous line in a file
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
