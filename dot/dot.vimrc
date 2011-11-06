"-------------------------------------------------
"  vimrc file for ed lim
"  @author - Ed Lim <limed@sudoers.org>
"-------------------------------------------------

"------------ editor behaviour block ------------------
set shiftwidth=4                " Use 4 spaces when text is indented
set softtabstop=4
set tabstop=4                   " sets how many spaces a tab is
set smarttab
set expandtab
set autoindent                  " auto indent
set smartindent                 " smart indent
set ruler                       " show curser position at all times
set incsearch                   " incremental search
set nohlsearch                  " no highlight on searching
set nowrap                      " no text wraps
set backspace=indent,eol,start  " allow backspacing over everything in insert mode
set term=ansi                   " set term to ansi
set noerrorbells                " do not beep on errors
set ttyfast                     " Smoother scrolling
set mouse=a                     " have mouse enabled at all time
set virtualedit=all             " allows curser to roam freely
set backspace=2                 " allows backspacing over everything
set showmode                    " show current mode you are in
set showcmd                     " display incomplete commands
set showmatch                   " show matching braces
set undolevels=500              " set the number of undo's
set novisualbell                " no sound on error
set title                       " Shows title in console window
set ls=2                        " always show status line
set foldmethod=marker           " fold method using markers
set nocompatible

"------------ Graphical block -----------------
syntax on       " Turns on syntax highlighting
color desert
set nu          " Line numbers

" ------- Shows trailing whitespaces --------
highlight WhitespaceEOL ctermbg=red guibg=red
match WhiteSpaceEOL /\s\+\%#\@!$/

" ------ Removes trailing spaces ------
function TrimWhiteSpace()
: %s/\s*$//
: ''
:endfunction

autocmd FileWritePre   * :call TrimWhiteSpace()
autocmd FileAppendPre  * :call TrimWhiteSpace()
autocmd FilterWritePre * :call TrimWhiteSpace()
autocmd BufWritePre    * :call TrimWhiteSpace()

" ----- Key bindings -------
:map cd :call TrimWhiteSpace()<CR>
:map cc v:s!^!//!g <CR><CR>
:map cx v:s!^\s*//!!g <CR>v=<CR>
:vmap cc :s!^!//!g <CR>
:vmap cx :s!^\s*//!!g <CR>v=
