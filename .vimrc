call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'morhetz/gruvbox'
Plug 'raimondi/delimitmate'
Plug 'ryanoasis/vim-devicons'
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }

call plug#end()
" Run :PlugInstall after saving 

colorscheme gruvbox
set bg=dark

set number
set tabstop=4
set shiftwidth=4
set expandtab

" NerdTree toggle
map <silent> <C-n> :NERDTreeFocus<CR>

" Latex Live Preview
let g:livepreview_previewer = 'evince'
