"--------------------
" Check & install vim-plug
"--------------------
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

"--------------------
" Plugins
"--------------------
call plug#begin('~/.vim/plugged')           " start plugin list

" Git
"---------
Plug 'tpope/vim-fugitive'                   " better UI for git functions
Plug 'idanarye/vim-merginal'                " extended, friendlier user interface for git piggybacking off of vim-fugitive

" Navigation
Plug 'scrooloose/nerdtree'                  " tree file manager for vim
Plug 'Xuyuanp/nerdtree-git-plugin'          " shows git status of files within NERDTree

" Visual
"---------
Plug 'nathanaelkane/vim-indent-guides'      " indent guides plugin
Plug 'tpope/vim-commentary'                 " help comment out lines
Plug 'vim-airline/vim-airline'              " statusline configuration in vim
Plug 'vim-airline/vim-airline-themes'       " themes for vim-airline
Plug 'airblade/vim-gitgutter'               " shows a git diff in the gutter
Plug 'flazz/vim-colorschemes'               " vim colorschemes
Plug 'morhetz/gruvbox'                      " gruvbox theme
Plug 'ryanoasis/vim-devicons'               " render dev-icons and glyphs when used with a patched NERD-font

" Language
"---------
Plug 'neoclide/vim-jsx-improve'             " improved syntax highlighting for javascript and jsx
"" Plug 'pangloss/vim-javascript'           " commented out for conflicts with vim-jsx-improve
"" Plug 'mxw/vim-jsx'                       " commented out for conflicts with vim-jsx-improve
Plug 'jparise/vim-graphql'                  " syntax highlighting for graphQL filetypes

" Utility
Plug 'w0rp/ale'                             " asynchronous linting/fixing
Plug 'SirVer/ultisnips'                     " snippet manager
Plug 'jkramer/vim-checkbox'                 " toggles checkboxes

" Files
Plug 'Valloric/YouCompleteMe'               " auto-suggestion/completion engine

" Defaults
Plug 'tpope/vim-sensible'                   " set of sensible default configs

call plug#end()                             " end plugin list

"--------------------
" Plugin config
"--------------------

" NERDTree
let NERDTreeShowLineNumbers=1               " Map CTRL + n to toggle NERDTree
let NERDTreeShowBookmarks=1                 " Open NERDTree bookmark by default
let g:NERDTreeWinSize=60                    " Increase default width of nerdTree buffer
nmap <C-n> :NERDTreeToggle<CR>
"" autocmd VimEnter * NERDTree              " enable NERDTree open on startup
nmap <leader>f :NERDTreeFind<CR>

" Merginal
let g:merginal_windowWidth = 100            " set Merginal side window width
nmap <C-m> :MerginalToggle<CR>

" FZF
set rtp+=/usr/local/opt/fzf
nnoremap <C-p> :FZF<CR>

" Airline
let g:airline_theme = 'gruvbox'             " set airline statusbar color-scheme
let g:airline_powerline_fonts = 1           " enable powerline fonts for statusbar
let g:airline#extensions#tabline#enabled=1  " enable top buffer/tab bar to be set by airline

" vim-indent-guides
let g:indent_guides_enable_on_vim_startup=1 " enable indent-guides on vim startup
let g:indent_guides_auto_colors = 0         " disallow indent-guides to inherit colors from color-scheme
let g:indent_guides_guide_size = 1          " set width of indent-guides

" Colorschemes
colorscheme gruvbox

" Plug options

" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PlugList       - lists configured plugins
" :PlugInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PlugSearch foo - searches for foo; append `!` to refresh local cache
" :PlugClean      - confirms removal of unused plugins; append `!` to auto-approve removal
