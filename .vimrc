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
Plugin 'tpope/vim-fugitive'                 " Better UI for git functions
Plugin 'idanarye/vim-merginal'              " Extended, friendlier user interface for git piggybacking off of vim-fugitive

" Navigation
Plugin 'scrooloose/nerdtree'                " tree file manager for vim
Plugin 'Xuyuanp/nerdtree-git-plugin'        " shows git status of files within NERDTree

" Visual
"---------
Plugin 'flazz/vim-colorschemes'             " Vim colorschemes
Plugin 'nathanaelkane/vim-indent-guides'    " Indent guides plugin
Plugin 'vim-airline/vim-airline'            " Plugin for statusline configuration in vim

" Language
"---------
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'jparise/vim-graphql'

" Files
Plugin 'Valloric/YouCompleteMe'             " auto-suggestion/completion engine

" Defaults
Plugin 'tpope/vim-sensible'                 " set of sensible default configs for vim

call vundle#end()

"--------------------
" Visual
"--------------------
colorscheme gruvbox                         " current color-scheme
"--------------------

" NERDTree
let NERDTreeShowLineNumbers=1               " Map CTRL + n to toggle NERDTree
let NERDTreeShowBookmarks=1                 " Open NERDTree bookmark by default
let g:NERDTreeWinSize=40                   " Increase default width of nerdTree buffer
nmap <C-n> :NERDTreeToggle<CR>
"" autocmd VimEnter * NERDTree              " enable NERDTree open on startup

" Merginal
let g:merginal_windowWidth = 100            " set Merginal side window width
nmap <C-m> :MerginalToggle<CR>

" FZF
set rtp+=/usr/local/opt/fzf
nnoremap <C-p> :FZF<CR>

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
