"--------------------
" Core
"--------------------
syntax on                   " syntax highlighting
set nocompatible            " be iMproved, required
filetype off                " required
filetype plugin indent on   " required
colorscheme gruvbox         " current color-scheme
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
" Better UI for git functions
Plugin 'tpope/vim-fugitive'
" Extended, friendlier user interface for git piggybacking off of vim-fugitive
Plugin 'idanarye/vim-merginal'

" Visual
"---------
Plugin 'tomasiser/vim-code-dark'
" Vim colorschemes
Plugin 'flazz/vim-colorschemes'
" Indent guides plugin
Plugin 'nathanaelkane/vim-indent-guides'
" Plugin for statusline configuration in vim
Plugin 'vim-airline/vim-airline'

" Language
"---------
" Plugin for GraphQL file detection, syntax highlighting, etc
Plugin 'jparise/vim-graphql'

" Plugin for autocomplete engine
Plugin 'Valloric/YouCompleteMe'

call vundle#end()            " required

"--------------------
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
"
" see :h vundle for more details or wiki for FAQ

" NERDTree
let NERDTreeShowLineNumbers=1
" enable NERDTree open on startup
" autocmd VimEnter * NERDTree

" vim-indent-guides
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 0
let g:indent_guides_guide_size = 1

" FZF
set rtp+=/usr/local/opt/fzf
nnoremap <C-p> :FZF<CR>

" Pathogen plugin manager
execute pathogen#infect()
filetype plugin indent on
call pathogen#helptags()

" Set backspace to delete
set backspace=indent,eol,start

" Set show line numbers
set number

" Map CTRL + n to toggle NERDTree
nmap <C-n> :NERDTreeToggle<CR>

" Open NERDTree bookmark by default
let NERDTreeShowBookmarks=1

" Increase default width of nerdTree buffer
:let g:NERDTreeWinSize=40

" Map CTRL + W to capslock
" nmap <C-w> 

" Map 'jj' to escape out of insert mode 
inoremap jk <ESC>

" Set tab and indents to 2 spaces
filetype plugin indent on
" show existing tab with 2 spaces width
set tabstop=2
" when indenting with '>', use 2 spaces width
set shiftwidth=2
" On pressing tab, insert 2 spaces
set expandtab

" Omni completion
filetype plugin on
set omnifunc=syntaxcomplete#Complete

