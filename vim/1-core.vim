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
let g:markdown_folding = 1
set nofoldenable
set foldlevel=2
set hidden
set ignorecase                              " ignore upper/lower case when searching
set smartcase                               " allow case-sensitive search only if the search pattern has an uppercase char, e.g. /The vs /the
set is                                      " show partial matches for a search phrase
set hls                                     " highlight all matching phrases

" Move lines
" https://vim.fandom.com/wiki/Moving_lines_up_or_down
" https://stackoverflow.com/questions/7501092/can-i-map-alt-key-in-vim/15399297#15399297
nnoremap ∆ :m .+1<CR>==
nnoremap ˚ :m .-2<CR>==

inoremap ∆ <Esc>:m .+1<CR>==gi
inoremap ˚ <Esc>:m .-2<CR>==gi

vnoremap ∆ :m '>+1<CR>gv=gv
vnoremap ˚ :m '<-2<CR>gv=gv

" Split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" inoremap jk <ESC>
let mapleader = "\<Space>"
nmap <leader>o o<Esc>
" resize buffer
nmap <leader>r :resize<CR>
" navigate to left buffer
nmap <leader>j :bN<CR>
" navigate to right buffer
nmap <leader>l :bn<CR>
" close current buffer
nmap <leader>k :bd<CR>
nnoremap <leader>q :q<CR>
" nmap gd gdzzviw
nnoremap <leader>x :call Checkbox()<CR>

" filetype detection
filetype on                                 " turn on filetype detection 
filetype plugin on
filetype plugin indent on                   " turn on indentation rules for specific filetypes

" Omni completion
set omnifunc=syntaxcomplete#Complete

" Disable auto-comment on newline for all sessions
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o 


" text highlighting
nnoremap <leader>/ :nohl<CR>

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

" markdown
let g:markdown_fenced_languages = ['javascript', 'typescript', 'html', 'python', 'bash=sh']
