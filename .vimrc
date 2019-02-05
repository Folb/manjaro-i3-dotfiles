call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'morhetz/gruvbox'
Plug 'raimondi/delimitmate'
Plug 'ryanoasis/vim-devicons'

call plug#end()
" Run :PlugInstall after saving 

colorscheme gruvbox
set bg=dark

set number
set tabstop=4
set shiftwidth=4
set expandtab


