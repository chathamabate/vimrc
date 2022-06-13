syntax on
set number
 
set tabstop=4
set shiftwidth=4
set expandtab

set splitbelow
set splitright

set nowrap
set termguicolors

"   Bracket completion.
inoremap {<CR> {<CR>}<Esc>ko
inoremap [<CR> [<CR>]<Esc>ko
inoremap (<CR> (<CR>)<Esc>ko 

filetype plugin indent on   

"   Resizing commands!
command -nargs=1  Hr :resize <args> 
command -nargs=1  Vr :vertical resize <args> 

"	Plugins...

call plug#begin()
"   Colortheme.
Plug 'flazz/vim-colorschemes'

"   Status bar.
Plug 'bling/vim-airline'

"   Git Gutter.
Plug 'airblade/vim-gitgutter'

"   Language Server Protocol.
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'

"   Autocomplete Work.
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'

"   C/C++ Syntax highlighting.
Plug 'bfrg/vim-cpp-modern'

"   NERD Tree
Plug 'preservim/nerdtree'
call plug#end()

"   C Syntax Highlighting Settings.
let g:cpp_member_highlight = 1

"   Unsuccessful attempt for custom headers.
" set path+=/Users/chathamabate/CEdev/include
" set path+=/Users/chathamabate/CEdev/ti-code

"   LSP settings.
let g:lsp_diagnostics_echo_cursor = 1

"   Tabing pop up menus.
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

"   NERDTree shortcuts :
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-p> :NERDTreeFind<CR>

set background=dark
colorscheme srcery

set backspace=indent,eol,start

