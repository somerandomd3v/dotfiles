 "Install Plug if missing
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

set number
set relativenumber
set hidden
set showtabline=0

" Plugins
call plug#begin()
Plug 'tpope/vim-surround'
Plug 'vim-ctrlspace/vim-ctrlspace'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/goyo.vim'
Plug 'ervandew/supertab'
call plug#end()

" ctrl-space config
let g:CtrlSpaceGlobCommand = 'ag --hidden ""'

" Colorscheme
colorscheme gruvbox
set bg=dark
