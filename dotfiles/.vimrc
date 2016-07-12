execute pathogen#infect()

" syntax
syntax on
"filetype plugin indent on

" Color scheme
"set background=dark

" 4 spaces tab
set tabstop=8 
set softtabstop=0 
set expandtab 
set shiftwidth=4 
set smarttab

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
vnoremap <silent> * :call VisualSelection('f')<CR>
vnoremap <silent> # :call VisualSelection('b')<CR>

" Map <Space> to / (search)
map <space> /

" Map end line to ß
map - $

" Remap colon and semicolon
nnoremap ; :
nnoremap : ;

" pathogen.vim for plugin loading
"execute pathogen#infect()

" Relative line numbers
function! NumberToggle()
  if(&relativenumber == 1)
    set number
  else
    set relativenumber
  endif
endfunc

set relativenumber
nnoremap <C-n> :call NumberToggle()<cr>

" Auto indent
function! IndentToggle()
  if(&ai==1)
    set noai
  else
    set ai 
  endif
  if(&si==1)
    set nosi
  else
    set si 
  endif
endfunc

nnoremap <C-i> :call IndentToggle()<cr>
