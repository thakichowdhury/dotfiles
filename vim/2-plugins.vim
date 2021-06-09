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
Plug 'justinmk/vim-sneak'                   " improved cursor movement using find-like movement

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
Plug 'mhinz/vim-startify'                   " a fancy start screen for vim/neovim
Plug 'kshenoy/vim-signature'                " toggle, display and navigate marks

" Language
"---------
Plug 'pangloss/vim-javascript'              " javascript indentation and syntax support
Plug 'MaxMEllon/vim-jsx-pretty'             " jsx syntax highlighting
" Plug 'leafgarland/typescript-vim'           " typescript syntax files for Vim
Plug 'jparise/vim-graphql'                  " syntax highlighting for graphQL filetypes
Plug 'stephpy/vim-yaml'                     " simpler/cleaner syntax highlighting for yaml files
Plug 'ekalinin/Dockerfile.vim'              " syntax highlighting for Docker files
Plug 'suy/vim-context-commentstring'        " sets the value of ‘commentstring’ to a different value depending on the region of the file
Plug 'neoclide/coc.nvim', {'branch': 'release'} " nodejs extension host for vim & neovim, load extensions like VSCode and host language servers

" Utility
" Plug 'w0rp/ale'                             " asynchronous linting/fixing
Plug 'SirVer/ultisnips'                     " snippet manager
Plug 'jkramer/vim-checkbox'                 " toggles checkboxes
Plug 'tpope/vim-surround'                   " automates making, altering, and removing surrounding brackets
" Plug 'heavenshell/vim-jsdoc'                " streamlines the making of jsdoc comments
Plug 'Raimondi/delimitMate'                 " provides insert mode auto-completion for quotes, parens, brackets, etc.

" Files
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'                     " vim configurations for FZF

" Defaults
Plug 'tpope/vim-sensible'                   " set of sensible default configs

call plug#end()                             " end plugin list

"--------------------
" Plugin config
"--------------------

" UltiSnips
nmap <leader>s :UltiSnipsEdit<CR>

" coc.nvim

" remap completion preview window navigation
" inoremap <expr> <C-j> pumvisible() ? "\<C-n>" : "\<C-j>"
" inoremap <expr> <C-k> pumvisible() ? "\<C-p>" : "\<C-k>"

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
" if has("patch-8.1.1564")
"   " Recently vim can merge signcolumn and number column into one
"   set signcolumn=number
" else
"   set signcolumn=yes
" endif

let g:coc_global_extensions = ['coc-tsserver', 'coc-json', 'coc-eslint']
" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gt <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ca <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
    if (index(['vim','help'], &filetype) >= 0)
        execute 'h '.expand('<cword>')
    else
        call CocAction('doHover')
    endif
endfunction

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Give more space for displaying messages.
set cmdheight=2

" vim-fugitive
" nnoremap :Gco :Git commit

" delimitMate
" :DelimitMateTest to see current config
let g:delimitMate_expand_cr = 2
let g:delimitMate_expand_space = 1

" UltiSnips
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsExpandTrigger="<tab>"

" vim-javascript
let g:javascript_plugin_jsdoc = 1

" vim-markdown
let g:vim_markdown_new_list_item_indent = 2

" NERDTree
let NERDTreeShowLineNumbers=1               " Map CTRL + n to toggle NERDTree
let NERDTreeShowBookmarks=1                 " Open NERDTree bookmark by default
let g:NERDTreeWinSize=60                    " Increase default width of nerdTree buffer
let NERDTreeIgnore=['\~$', '\.swp$', '\.swo$', '\.DS_Store$']

nmap <C-n> :NERDTreeToggle<CR>
"" autocmd VimEnter * NERDTree              " enable NERDTree open on startup
" open NERDTree panel to the local of the file in the current buffer
nmap <leader>F :NERDTreeFind<CR>

" Merginal
let g:merginal_windowWidth = 100            " set Merginal side window width
nmap <leader>m :MerginalToggle<CR>

" FZF
nnoremap <leader>f :Files<CR>
nnoremap <leader>g :Rg<cr>

" Airline
let g:airline_theme = 'gruvbox'             " set airline statusbar color-scheme
let g:airline_powerline_fonts = 1           " enable powerline fonts for statusbar
let g:airline#extensions#tabline#enabled=1  " enable top buffer/tab bar to be set by airline

" vim-indent-guides
let g:indent_guides_enable_on_vim_startup=1 " enable indent-guides on vim startup
let g:indent_guides_auto_colors = 0         " disallow indent-guides to inherit colors from color-scheme
let g:indent_guides_guide_size = 1          " set width of indent-guides

" jsdoc.vim
let g:jsdoc_enable_es6=1

" Colorschemes
let &t_ZH="\e[3m"                           " this and the next line allows for italics when using iTerm
let &t_ZR="\e[23m"

let g:gruvbox_italic = '1'
let g:gruvbox_contrast_dark = 'hard'

colorscheme gruvbox

" Vim-sneak
let g:sneak#label = 1
map f <Plug>Sneak_f
map F <Plug>Sneak_F
map t <Plug>Sneak_t
map T <Plug>Sneak_T

" Plug options

" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PlugList       - lists configured plugins
" :PlugInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PlugSearch foo - searches for foo; append `!` to refresh local cache
" :PlugClean      - confirms removal of unused plugins; append `!` to auto-approve removal
