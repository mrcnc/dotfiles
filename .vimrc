" Maps leader key to comma ,
let mapleader = ","

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" add your plugins below
"Plugin 'vim-airline/vim-airline'
"Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-sleuth'
Plugin 'fatih/vim-go'
Plugin 'davidhalter/jedi-vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'elzr/vim-json'
"Plugin 'scrooloose/syntastic'
Plugin 'hashivim/vim-terraform'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'wincent/command-t'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


" Display line numbers
set number

" UTF-8 as default encoding
set encoding=utf8

" Wrap git commit messages at 72 characters
au FileType gitcommit set tw=72

" Toggle NERDTree window with <leader>n 
nnoremap <leader>n :NERDTreeToggle<Enter>

" Hide .pyc in nerdtree
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

" Run 'terraform fmt' when writing config files
let g:terraform_fmt_on_save = 1

" make Python follow PEP8 ( http://www.python.org/dev/peps/pep-0008/ )
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |

"Set tabs/indents/width on other files
au BufNewFile,BufRead *.js,*.html,*.css,*.sql
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |

" Automatically set paste mode
let &t_SI .= "\<Esc>[?2004h"
let &t_EI .= "\<Esc>[?2004l"
inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()

function! XTermPasteBegin()
  set pastetoggle=<Esc>[201~
  set paste
  return ""
endfunction
