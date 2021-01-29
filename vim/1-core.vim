"--------------------
" Core
"--------------------
syntax on                                   " syntax highlighting
set nocompatible                            " be improved, required
set backspace=indent,eol,start              " set backspace to delete
set number                                  " set line numbers to show

" indentation
set tabstop=4                               " how many columns of whitespace a \t is worth
set softtabstop=2                           " how many columns of whitespace a tab keypress or a backspace keypress is worth
set shiftwidth=2                            " how many columns of whitespace a “level of indentation” is worth
set expandtab                               " insert space characters whenever the tab key is pressed

set encoding=UTF-8                          " set encoding to utf-8 for fonts/icons
let &t_8f="\<Esc>[38;2;%lu;%lu;%lum" " enable italcs
let &t_8b="\<Esc>[48;2;%lu;%lu;%lum" " enable italics
set termguicolors
set guifont=FantasqueSansMono:h13             " set font for GUI (e.g. Macvim)
" set spell                                   " set spell-check on
" set spelllang=en_us                         " set spell-check language to english
" set spellfile=spellfile.utf-8.add           " set file to add to spell-check list
set foldmethod=indent   
set foldnestmax=10
set nofoldenable
set foldlevel=2
set hidden
set ignorecase                              " ignore upper/lower case when searching
set smartcase                               " allow case-sensitive search only if the search pattern has an uppercase char, e.g. /The vs /the
set is                                      " show partial matches for a search phrase
set hls                                     " highlight all matching phrases

" Split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" inoremap jk <ESC>
let mapleader = "\<Space>"
nmap <leader>o o<Esc>
nmap <leader>r :resize<CR>
nmap <leader>j :bN<CR>
nmap <leader>l :bn<CR>
nmap <leader>k :bd<CR>
" nmap gd gdzzviw

" filetype detection
filetype on                                 " turn on filetype detection 
filetype plugin on
filetype plugin indent on                   " turn on indentation rules for specific filetypes

" Omni completion
set omnifunc=syntaxcomplete#Complete

" Disable auto-comment on newline for all sessions
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o 

" Configure cursor
" highlight Cursor guifg=white guibg=black
" highlight iCursor guifg=white guibg=steelblue
" set guicursor=n-v-c:block-Cursor
" set guicursor+=i:ver100-iCursor
" set guicursor+=n-v-c:blinkon1
" set guicursor+=i:blinkwait10

" Jump to last position upon opening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif

" yank to clipboard
if has("clipboard")
  set clipboard=unnamed " copy to the system clipboard

  if has("unnamedplus") " X11 support
    set clipboard+=unnamedplus
  endif
endif
