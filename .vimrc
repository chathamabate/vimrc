syntax on
set number

set tabstop=4
set shiftwidth=4
set expandtab

inoremap {<CR> {<CR>}<Esc>ko
inoremap [<CR> [<CR>]<Esc>ko
inoremap (<CR> (<CR>)<Esc>ko filetype plugin indent on   

"	Plugins...

call plug#begin()
Plug 'vim-jp/vim-cpp'
Plug 'morhetz/gruvbox'
Plug 'ycm-core/YouCompleteMe'
call plug#end()

set background=dark
colorscheme gruvbox

