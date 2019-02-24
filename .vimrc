set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo

Plugin 'tpope/vim-fugitive'

" Friendlier user interface for git piggybacking off of vim-fugitive
Plugin 'idanarye/vim-merginal'

" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'

" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'

" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.

" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
Plugin 'tomasiser/vim-code-dark'
" https://github.com/tomasiser/vim-code-dark#installation"

" Plugin for autocomplete engine
Plugin 'Valloric/YouCompleteMe'

" Plugin for GraphQL file detection, syntax highlighting, etc
Plugin 'jparise/vim-graphql'

" Vim colorschemes
Plugin 'flazz/vim-colorschemes'

" Indent guides plugin
Plugin 'nathanaelkane/vim-indent-guides'

" Plugin for statusline configuration in vim
Plugin 'vim-airline/vim-airline'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
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
" Put your non-Plugin stuff after this line

" FZF
set rtp+=/usr/local/opt/fzf

" personal-config
colorscheme gruvbox

" Pathogen plugin manager
execute pathogen#infect()
syntax on
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

" enable line numbers
let NERDTreeShowLineNumbers=1

" enable NERDTree open on startup
" autocmd VimEnter * NERDTree

" vim-indent-guides settings
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 0
let g:indent_guides_guide_size = 1

" fzf
nnoremap <C-p> :FZF<CR>
