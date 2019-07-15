"Vundle Settings
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'kien/ctrlp.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'majutsushi/tagbar'
Plugin 'dracula/vim'
Plugin 'ervandew/supertab'
call vundle#end()

"Airline settings
set laststatus=2
let g:airline#extension#tabline#enabled = 1

colorscheme dracula
set guifont=SourceCodePro\ 8

"General (G)Vim settings
set go-=T
set go-=M
set go-=r
set go-=b

syntax on
set autochdir
set shiftwidth=4
set tabstop=4
set number relativenumber


filetype plugin indent on

"Keyboard mapping
map <F3> :NERDTreeToggle<Enter>
