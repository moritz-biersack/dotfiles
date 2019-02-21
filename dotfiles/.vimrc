execute pathogen#infect()

" encoding
set encoding=utf-8

" syntax
syntax on
"filetype plugin indent on

" Set to 256 colors for tmux
let &t_Co=256

" Color scheme
set background=dark
"let g:solarized_termcolors=256
let g:hybrid_custom_term_colors = 1
colorscheme hybrid

" Highlight search
set hls incsearch

" Highlight cursor
set cursorline

" 4 spaces tab
set tabstop=8 
set softtabstop=0 
set expandtab 
set shiftwidth=4 
set smarttab

set ai "Auto indent
set si "Smart indent
"avoid unindent comment
"inoremap # X# 
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
execute pathogen#infect()

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

" Mark column 80
highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%81v', 100)

" Powerline Plugin
set laststatus=2

" Settings for ctrlp
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_max_height = 30
set wildignore+=*.pyc

" Breakpoint
map <Leader>b Oimport ipdb; ipdb.set_trace() # BREAKPOINT<C-c>

" Syntastic (lint tool)
set statusline+=%#warningmsg# 
" set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

let g:syntastic_javascript_checkers = ['jshint']
