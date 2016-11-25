syntax enable

filetype on
set autoindent
set cindent
set ts=2
set et
set sw=2
set softtabstop=2
set backspace=2
set number

set background=dark
let g:solarized_termtrans = 1
colorscheme solarized

if has('unnamedplus')
  set clipboard=unnamed,unnamedplus
else
  set clipboard=unnamed
endif

imap jj <Esc>
