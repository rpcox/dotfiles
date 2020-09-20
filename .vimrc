syntax on
filetype plugin on
" set line numbering and relative line numbering
set number relativenumber
" set the number column width to 4
set numberwidth=4
" autoremove trailing whitespace from file on write
autocmd BufWritePre * %s/\s\+$//e
" do not ignore case <default>
set noignorecase
" we want vim to go back to the previous line in a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
" The following are commented out as they cause vim to behave a lot
" differently from vi.
"set showcmd            " Show (partial) command in status line.
"set showmatch          " Show matching brackets.
"set ignorecase         " Do case insensitive matching
"set smartcase          " Do smart case matching
"set incsearch          " Incremental search
"set autowrite          " Automatically save before commands like :next and :make
"set hidden             " Hide buffers when they are abandoned
"set mouse=a            " Enable mouse usage (all modes)
"
"C indenting
"set cindent shiftwidth=2
