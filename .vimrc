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
Plugin 'scrooloose/syntastic'
Plugin 'mxw/vim-jsx'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'heavenshell/vim-jsdoc'
Plugin 'nono/vim-handlebars'
Plugin 'Townk/vim-autoclose'
Plugin 'elixir-lang/vim-elixir'
Plugin 'joshdick/onedark.vim'
Plugin 'chrisbra/Colorizer'
Plugin 'sevko/vim-nand2tetris-syntax'
Plugin 'terryma/vim-multiple-cursors'

call vundle#end()            " required
filetype plugin indent on    " required

set tabstop=2         " Tabs are 2 spaces
set expandtab         " Always use spaces rather than tabs characters
set shiftwidth=2      " Size of an 'indent'
set number

highlight ColorColumn ctermbg=DarkGray
set colorcolumn=80
set smartcase
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins

"set termguicolors
let g:onedark_termcolors=256
syntax on             " Enable syntax highlighting
colorscheme onedark

let g:ctrlp_max_files=0
set ignorecase

highlight ExtraWhitespace ctermbg=Magenta

" Fold methods............................................
" set foldenable
" set foldmethod=indent
" set foldlevel=1
" End of Fold methods ....................................

:nnoremap <C-g> :NERDTreeToggle<CR>
:noremap <F4> :ColorToggle<CR>
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

nmap <silent> <C-l> <Plug>(jsdoc)
let g:jsdoc_enable_es6 = 1

let g:jsx_ext_required = 0


" Console log from insert mode; Puts focus inside parentheses
imap cll console.log();<Esc>==f(a
imap dsc describe('', () => {<CR>  it('', () => {<CR>  expect();<CR>});<CR>}<Esc>A;<Esc>V4k=f'a
imap iii it('', () => {<CR> expect()<CR>}<Esc>A;<Esc>V2k=f'a
" Console log from visual mode on next line, puts visual selection inside parentheses
vmap cll yocll<Esc>p
" Console log from normal mode, inserted on next line with word your on inside parentheses
nmap cll yiwocll<Esc>p )
