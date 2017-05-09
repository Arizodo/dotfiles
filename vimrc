execute pathogen#infect()

"Set Relative Numbers
set number
set relativenumber

"Set various variables
set shiftwidth=4
set tabstop=4
set laststatus=2

"Fix backspace issue
set backspace=indent,eol,start

"Setting Colorscheme and (Syntax) highlighting
colorscheme wombat
set background=dark
syntax on
"Key (re)mapping
map § :NERDTreeToggle <CR>
map <c-Space> :CtrlPLine <CR>

"Disabling Arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
inoremap <Up> <NOP>
inoremap <Up> <NOP>
inoremap <Down> <NOP>
inoremap <Left> <NOP>
vnoremap <Right> <NOP>
vnoremap <Down> <NOP>
vnoremap <Left> <NOP>
vnoremap <Right> <NOP>

"Disabling bell noise
set t_vb=

"autoexec
"autocmd vimenter * Tagbar

