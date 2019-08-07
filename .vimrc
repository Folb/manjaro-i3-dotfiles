call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'morhetz/gruvbox'
Plug 'raimondi/delimitmate'
Plug 'ryanoasis/vim-devicons'
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
Plug 'valloric/youcompleteme'
Plug 'sirver/ultisnips'
Plug 'urso/haskell_syntax.vim'
Plug 'itchyny/vim-haskell-indent'

call plug#end()

" Run :PlugInstall after saving 

colorscheme gruvbox
set bg=dark

set number
set tabstop=4
set shiftwidth=4
set expandtab

" NerdTree toggle
map <silent> <C-n> :NERDTreeToggle<CR>

" Latex Live Preview
let g:livepreview_previewer = 'evince'

" ultisnips
let g:UltiSnipsListSnippets = '<F5>'
let g:UltiSnipsExpandTrigger = '<c-b>'
let g:UltiSnipsEditSplit = 'vertical'
let g:UltiSnipsSnippetsDir = $HOME . '/.vim/UltiSnips'
let g:UltiSnipsSnippetDirectories = [$HOME . '/.vim/UltiSnips', 'UltiSnips']

