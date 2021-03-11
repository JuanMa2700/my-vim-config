call plug#begin('~/.vim/plugged')

" Themes
Plug 'morhetz/gruvbox'

" status bar
Plug 'maximbaz/lightline-ale'
Plug 'itchyny/lightline.vim'

" IDE
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Search
Plug 'haya14busa/is.vim'
Plug 'haya14busa/vim-asterisk'

" Handleg global search and replace
Plug 'mhinz/vim-grepper'

" Autocompletion and navigation
Plug 'sirver/ultisnips'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Prettier
Plug 'prettier/vim-prettier', { 'do': 'npm install' }

" Debug
Plug 'puremourning/vimspector'

" Auto close tags
Plug 'alvan/vim-closetag'
Plug 'jiangmiao/auto-pairs'

" Multiple cursors
Plug 'terryma/vim-multiple-cursors'

" Comments management
Plug 'preservim/nerdcommenter'

call plug#end()
