" Author: Timofey Dankevich
" Nickname: Dartchain
" Date: 24/12/23
" File: vim config


call plug#begin('~/.vim/plugged')

Plug 'Valloric/YouCompleteMe'

call plug#end()

" Indention options
set autoindent
set expandtab set filetype
set shiftround
set shiftwidth=4
set smarttab
set tabstop=4

" Search options
set hlsearch
set ignorecase
set incsearch
set smartcase

" set display+=lastline:		" Always try to show a paragraph's last line.
set encoding=utf-8
set linebreak			" Avoid wrapping a line in the middle of a word.
set scrolloff=1			" The number of screen lines to keep above and below the cursor.
set sidescrolloff=5		" The number of screen columns to keep to the left and right of the cursor.
syntax enable
set wrap			    " Enable line wrapping.

" UI options
set laststatus=2
set ruler               " Always show cursor position.
set wildmenu			" Display command line's tab complete options as a menu.
set tabpagemax=50		" Maximum number of tab pages that can be opened from the command line.
" set colourscheme wombat256mod
" set cursorline
set number			
" set relativenumber
" set noerrorbells 
" set visualbell 			" Flash the screen instead of beeping on errors.
set mouse=a
set title
set background=light

" Code Folding Options
set foldmethod=indent       " Fold based on indention levels.
set foldnestmax=5           " Only fold up to three nested levels.
set nofoldenable            " Disable folding by default.

set autoread                    " Automatically re-read files if unmodified inside Vim.
set backspace=indent,eol,start  " Allow backspacing over indention, line breaks and insertion start.
" set backupdir=~/.cache/vim      " Directory to store backup files.
set confirm                     " Display a confirmation dialog when closing an unsaved file.
" set dir=~/.cache/vim            " Directory to store swap files.
" set formatoptions+=j            " Delete comment characters when joining lines.
" set hidden                      " Hide files in the background instead of closing them.
set history=1000                " Increase the undo limit.
set nomodeline                  " Ignore file's mode lines; use vimrc configurations instead.
" set noswapfile                " Disable swap files.
set nrformats-=octal            " Interpret octal as decimal when incrementing numbers.
set shell                       " The shell used to execute commands.
"set spell                       " Enable spellchecking.
set wildignore+=.pyc,.swp       " Ignore files matching these patterns when opening files based on a glob pattern.
