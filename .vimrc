" Install Plug if missing
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

set number
set relativenumber

" Plugins
call plug#begin()

Plug 'scrooloose/nerdtree'

call plug#end()

" NerdTree
autocmd vimenter * NERDTree
let NERDTreeShowHidden=1
noremap <C-E> :NERDTree <Return>

