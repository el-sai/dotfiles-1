set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'
Plugin 'vim-ruby/vim-ruby'
Plugin 'gavinbeatty/dragvisuals.vim'
Plugin 'jeffkreeftmeijer/vim-numbertoggle'
Plugin 'kien/ctrlp.vim'
Plugin 'mattn/emmet-vim'
Plugin 'ntpeters/vim-better-whitespace'
" Plugin 'altercation/vim-colors-solarized'
Plugin 'pangloss/vim-javascript'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'heavenshell/vim-jsdoc'
Plugin 'Townk/vim-autoclose'


" Plugin 'ELouisYoung/vim-better-molokai'

call vundle#end()            " required
filetype plugin indent on    " required

set tabstop=2         " Tabs are 2 spaces
set expandtab         " Always use spaces rather than tabs characters
set shiftwidth=2      " Size of an 'indent'
set number

highlight ColorColumn ctermbg=DarkGray
set colorcolumn=80
set smartcase
syntax on             " Enable syntax highlighting
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins

" colo better-molokai
" let g:solarized_termcolors=16
" syntax enable
" set background=dark
" colorscheme solarized

highlight ExtraWhitespace ctermbg=Magenta

" Fold methods............................................
" set foldenable
" set foldmethod=indent
" set foldlevel=1
" End of Fold methods ....................................

:nnoremap <C-g> :NERDTreeToggle<CR>
:noremap <F3> :set hlsearch! hlsearch?<CR>
:noremap <F2> :ToggleWhitespace<CR>
vmap  <expr>  <LEFT>   DVB_Drag('left')
vmap  <expr>  <RIGHT>  DVB_Drag('right')
vmap  <expr>  <DOWN>   DVB_Drag('down')
vmap  <expr>  <UP>     DVB_Drag('up')
vmap  <expr>  D        DVB_Duplicate()

let mapleader = "\<Space>"
nnoremap <Leader>r gt
nnoremap <Leader>e gT

" inoremap {<CR> {<CR>}<C-o>O

" Remove any introduced trailing whitespace after moving...  
let g:DVB_TrimWS = 1
