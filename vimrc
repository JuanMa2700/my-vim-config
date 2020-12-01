set number
set mouse=a
set numberwidth=1
set clipboard=unnamedplus
syntax enable
set showcmd
set ruler
set encoding=utf-8
set showmatch
set sw=2
set relativenumber
set laststatus=2
set hlsearch incsearch
set modifiable

so ~/.vim/plugins.vim
so ~/.vim/plugin-config.vim

" folder and files
command! -bang -nargs=*  All
  \ call fzf#run(fzf#wrap({'source': 'rg --files --hidden --no-ignore-vcs --glob "!{node_modules/*,.git/*}"', 'down': '40%', 'options': '--expect=ctrl-t,ctrl-x,ctrl-v --multi --reverse' }))

" so ~/.vim/maps.vim

nmap <Leader>s <Plug>(easymotion-s2)
nmap <Leader>nt :NERDTreeFind<CR>
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
nmap <Leader>wq :wq<CR>
nnoremap <C-p> :All<CR>
nnoremap <Leader>F :Rg<CR>
nnoremap <Leader>b :Buffers<CR>
nnoremap <Leader>h :History<CR>
nnoremap <Leader>j 15j
nnoremap <Leader>k 15k
nnoremap <Leader>r :%s///g<Left><Left>
nnoremap <Leader>rc :%s///gc<Left><Left><Left>

" Asterisk plugin

map *  <Plug>(asterisk-z*)<Plug>(is-nohl-1)
map g* <Plug>(asterisk-gz*)<Plug>(is-nohl-1)
map #  <Plug>(asterisk-z#)<Plug>(is-nohl-1)
map g# <Plug>(asterisk-gz#)<Plug>(is-nohl-1)

" Global replace maps
nnoremap <Leader>R
  \ :let @s='\<'.expand('<cword>').'\>'<CR>
  \ :Grepper -cword -noprompt<CR>
  \ :cfdo %s/<C-r>s// \| update
  \<Left><Left><Left><Left><Left><Left><Left><Left><Left><Left>


colorscheme gruvbox
set bg=dark

