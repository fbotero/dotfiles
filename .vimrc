" .vimrc
" use vim defaults instead of trying for vi compatibility
set nocompatible
filetype off       " required!
set rtp+=.vim/bundle/vundle
call vundle#rc()

" let Vundle manage Vundle
" required!
Plugin 'gmarik/vundle'
Plugin 'morhetz/gruvbox'
Plugin 'vim-airline/vim-airline'
Plugin 'ctrlpvim/ctrlp.vim'

filetype plugin indent on  " required!

" shows the line number
set number
" shows row and column number at bottom right corner
set ruler
" UTF-8
set encoding=utf-8
syntax enable
" dark backround
set background=dark
"colorscheme desert
colorscheme gruvbox

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" allways show the status line
set laststatus=2

" set tabspace to 2. Still a \t
set tabstop=2

" indents width of 2
set shiftwidth=2

" set the number of columbs for a tab
set softtabstop=2

" expand tabs to spaces
set expandtab

" shows the line number
set number
set relativenumber

" highlight current line
set cursorline

" copy indent from last line when starting new line
set autoindent

" set font
if has ("gui_running")
  if has("gui_macvim")
    set guifont=Roboto_Mono:h10
  elseif has("gui_win32")
    set guifont=Iosevka:h10
  endif
endif

" hide GVIM toolbar
set guioptions -=T
set guioptions -=m

" no backups
set nobackup
set noswapfile

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'

" CtrlP configuration
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " Linux/MacOSX
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows

" Bad, bad arrowkeys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
