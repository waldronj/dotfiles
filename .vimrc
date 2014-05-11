set nu
set t_Co=256
set term=screen-256color

syntax enable
set background=dark
colorscheme solarized

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'PProvost/vim-ps1.git'
Bundle 'rodjek/vim-puppet'
Bundle 'scrooloose/nerdtree'
Bundle 'bling/vim-airline'
Bundle 'pangloss/vim-javascript'
Bundle 'jelera/vim-javascript-syntax'
Bundle 'digitaltoad/vim-jade'
Bundle 'altercation/vim-colors-solarized'

au BufRead,BufNewFile *.ps1 set ft=ps1
au BufRead,BufNewFile *.pp set ft=puppet
au BufRead,BufNewFile *.jade set ft=jade
au BufRead,BufNewFile *.js set ft=javascript
au BufRead,BufNewFile *.ejs set ft=html


map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

let g:airline#extensions#tabline#enabled = 1
set laststatus=2

set tabstop=4       " The width of a TAB is set to 4. Still it is a \t. It is just that Vim will interpret it to be having a width of 4.
set shiftwidth=4    " Indents will have a width of 4
set softtabstop=4   " Sets the number of columns for a TAB
set expandtab       " Expand TABs to spaces

let mapleader = ","

function! NERDTreeToggleOrFocus()
        if expand("%") =~ "NERD_tree"
            :NERDTreeToggle
        else
            call NERDTreeFocus()
        endif
    endfunction
        nmap <leader>n :call NERDTreeToggleOrFocus()<CR>
