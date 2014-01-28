set nu
set t_Co=256

syntax enable
colorscheme codeschool

set rtp+=~/.vim/bundle/vundle/
 call vundle#rc()

Bundle 'PProvost/vim-ps1.git'
Bundle 'rodjek/vim-puppet'
Bundle 'scrooloose/nerdtree'
Bundle 'bling/vim-airline'
Bundle 'pangloss/vim-javascript'
Bundle 'jelera/vim-javascript-syntax'
Bundle 'digitaltoad/vim-jade'

au BufRead,BufNewFile *.ps1 set ft=ps1
au BufRead,BufNewFile *.pp set ft=puppet
au BufRead,BufNewFile *.jade set ft=jade
au BufRead,BufNewFile *.js set ft=javascript

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l


let g:airline#extensions#tabline#enabled = 1
set laststatus=2
