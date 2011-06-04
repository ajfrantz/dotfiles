
set nocompatible
filetype plugin indent on
syntax on

" Default tab behavior
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" Automatically indent to previous lines's indentation level,
" except in the cases where vim can figure out something smarter.
set autoindent
set smartindent

" Allow backspace in insert mode.
set backspace=2

" Sometimes I mistype the command with shift down still, so yeah.
command W :w

" Yank into the system clipboard by default.
set clipboard=unnamed

" Show matching parens / braces / etc. when typed.
set showmatch

" Ensure each window has the current cursor position always
set ruler

" As you type the search token, jump to the first match.
set incsearch

" When in block edit mode, let the cursor roam anywhere it wants.
set virtualedit=block

" change to the directory of the file you're editing
set autochdir

" make backup files but keep them out of my working directories
set backup
set backupdir=~/.vim/backup

" keep swap files out of my working directories
set directory=~/.vim/tmp

" allow buffer changes without saving
set hidden

" don't redraw while running macros
set lazyredraw

" show line numbers
set number

" always keep a few lines below the cursor visible
set scrolloff=7

" Allow / honor modelines
set modeline
set modelines=3

" Use easytags.vim to generate project-specific tags files
set tags=./tags;
let g:easytags_dynamic_files = 1

map <C-t> :FufBuffer<CR>
map <F2>  :NERDTreeToggle<CR>
map <F4>  :TlistToggle<CR>

"set makeprg=clear\ &&\ scons
set makeprg=clear\ &&\ cmake\ ..\ &&\ make\ &&\ make\ test

" Support for Ctrl+R in visual mode to open a search/replace of highlighted
" text.
vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>

