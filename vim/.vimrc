" A minimal vimrc.
"
" Referenced here: http://vimuniversity.com/samples/your-first-vimrc-should-be-nearly-empty
"
" Original Author:	     Bram Moolenaar <Bram@vim.org>
" Made more minimal by:  Ben Orenstein
" Modified by :          Ben McCormick

"  If you don't understand a setting in here, just type ':h setting'.

" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" Make backspace behave in a sane manner.
set backspace=indent,eol,start

" Switch syntax highlighting on
syntax on

" Enable file type detection and do language-dependent indenting.
filetype plugin indent on

" Show line numbers
set number

" Allow hidden buffers, don't limit to 1 file per window/split
set hidden

"Personal settings
"Add at will
execute pathogen#infect()
syntax on

"Set the status line options to show more info.
set laststatus=2
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}

"Set colorscheme and font options.
colorscheme vice
set guifont=PragmataPro:h11

"Set line no., buffer, search, highlight, autoindenet and more.
set ignorecase
set incsearch
set smartcase
set showmatch
set autoindent
set ruler
set vb
set viminfo+=n$VIM/_viminfo
set noerrorbells
set showcmd
set mouse=a
set history=1000
set undolevels=1000

"Python specific formatting
set tabstop=8
set expandtab
set softtabstop=4
set shiftwidth=4
filetype indent on

"show a visual line under the cursor's current line
set cursorline

"enable all python syntax highlighting features
let python_highlight_all = 1

"finding files
"provides tab-completion for all file-related tasks
set path+=**

"display all matching files when we tab complete
set wildmenu
