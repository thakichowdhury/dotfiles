"--------------------
" Core
"--------------------
syntax on                                   " syntax highlighting
set nocompatible                            " be improved, required
set backspace=indent,eol,start              " set backspace to delete
set number                                  " set line numbers to show
set tabstop=2                               " show existing tab with 2 spaces width
set shiftwidth=2                            " set tab width to 2 spaces when indenting with '>'
set expandtab                               " on pressing tab, insert 2 spaces
set encoding=UTF-8                          " set encoding to utf-8 for fonts/icons
set guifont=FantasqueSansMono:h13           " set font for GUI (e.g. Macvim)
" set spell                                   " set spell-check on
" set spelllang=en_us                         " set spell-check language to english
" set spellfile=spellfile.utf-8.add           " set file to add to spell-check list

inoremap jk <ESC>
let mapleader = "\<Space>"
nmap <leader>o o<Esc>

filetype on                                 " turn on filetype detection 
filetype plugin on
filetype plugin indent on                   " turn on indentation rules for specific filetypes

" Omni completion
set omnifunc=syntaxcomplete#Complete

" Disable auto-comment on newline for all sessions
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o 

" Configure cursor
highlight Cursor guifg=white guibg=black
highlight iCursor guifg=white guibg=steelblue
set guicursor=n-v-c:block-Cursor
set guicursor+=i:ver100-iCursor
set guicursor+=n-v-c:blinkon1
set guicursor+=i:blinkwait10

" Jump to last position upon opening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif

"--------------------
" Visual
"--------------------
colorscheme gruvbox                         " current color-scheme
"--------------------
