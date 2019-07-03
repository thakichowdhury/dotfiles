"--------------------
" Check & install vim-plug
"--------------------
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

"--------------------
" Plugins
"--------------------
call plug#begin('~/.vim/plugged')           " start plugin list


call plug#end()                             " end plugin list

"--------------------
" Plugin config
"--------------------

