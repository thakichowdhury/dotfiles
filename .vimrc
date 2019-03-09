"--------------------
" Core
"--------------------
syntax on                                   " syntax highlighting
set nocompatible                            " be iMproved, required
set backspace=indent,eol,start              " Set backspace to delete
set number                                  " Set line numbers to show
set tabstop=2                               " show existing tab with 2 spaces width
set shiftwidth=2                            " when indenting with '>', use 2 spaces width
set expandtab                               " on pressing tab, insert 2 spaces

filetype off                                " required
filetype plugin indent on                   " required

" Omni completion
filetype plugin on
set omnifunc=syntaxcomplete#Complete

autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o  " disable auto comment for all sessions

inoremap jk <ESC>

" Configure cursor
highlight Cursor guifg=white guibg=black
highlight iCursor guifg=white guibg=steelblue
set guicursor=n-v-c:block-Cursor
set guicursor+=i:ver100-iCursor
set guicursor+=n-v-c:blinkon1
set guicursor+=i:blinkwait10

"--------------------
" Plugins
"--------------------
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugin managers
Plugin 'VundleVim/Vundle.vim'
" let Vundle manage Vundle, required

" Git
"---------
Plugin 'tpope/vim-fugitive'                 " better UI for git functions
Plugin 'idanarye/vim-merginal'              " extended, friendlier user interface for git piggybacking off of vim-fugitive

" Navigation
Plugin 'scrooloose/nerdtree'                " tree file manager for vim
Plugin 'Xuyuanp/nerdtree-git-plugin'        " shows git status of files within NERDTree

" Visual
"---------
Plugin 'flazz/vim-colorschemes'             " vim colorschemes
Plugin 'nathanaelkane/vim-indent-guides'    " indent guides plugin
Plugin 'vim-airline/vim-airline'            " statusline configuration in vim
Plugin 'vim-airline/vim-airline-themes'     " themes for vim-airline
Plugin 'airblade/vim-gitgutter'             " shows a git diff in the gutter
Plugin 'morhetz/gruvbox'                    " gruvbox theme

" Language
"---------
Plugin 'neoclide/vim-jsx-improve'
"" Plugin 'pangloss/vim-javascript'
"" Plugin 'mxw/vim-jsx'
Plugin 'jparise/vim-graphql'

" Utility
Plugin 'w0rp/ale'                           " asynchronous linting/fixing
Plugin 'SirVer/ultisnips'                   " snippet manager

" Files
Plugin 'Valloric/YouCompleteMe'             " auto-suggestion/completion engine

" Defaults
Plugin 'tpope/vim-sensible'                 " set of sensible default configs

call vundle#end()

"--------------------
" Visual
"--------------------
colorscheme gruvbox                         " current color-scheme
"--------------------

" NERDTree
let NERDTreeShowLineNumbers=1               " Map CTRL + n to toggle NERDTree
let NERDTreeShowBookmarks=1                 " Open NERDTree bookmark by default
let g:NERDTreeWinSize=40                    " Increase default width of nerdTree buffer
nmap <C-n> :NERDTreeToggle<CR>
"" autocmd VimEnter * NERDTree              " enable NERDTree open on startup

" Merginal
let g:merginal_windowWidth = 100            " set Merginal side window width
nmap <C-m> :MerginalToggle<CR>

" FZF
set rtp+=/usr/local/opt/fzf
nnoremap <C-p> :FZF<CR>

" Airline
let g:airline_theme = 'gruvbox'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" vim-indent-guides
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 0
let g:indent_guides_guide_size = 1

" Plugin options
"--------------------
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
