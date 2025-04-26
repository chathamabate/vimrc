
syntax on
set number

set tabstop=4
set shiftwidth=4
set expandtab

set splitbelow
set splitright

set nowrap
set termguicolors

set colorcolumn=100

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
Plug 'morhetz/gruvbox'

"   Status bar.
Plug 'bling/vim-airline'

"   Git Gutter.
Plug 'airblade/vim-gitgutter'

"   Language Server Protocol.
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'

Plug 'dense-analysis/ale'

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

"   LSP settings. Showing errors will go to ALE.
let g:lsp_diagnostics_enabled = 0
let g:lsp_diagnostics_echo_cursor = 0

" Set up LSP Log file.
let g:lsp_log_verbose = 0
" let g:lsp_log_file = expand('~/vim-lsp.log')

"   Use a better version of clangd instead of what is provided by 
"   clangd.
" let g:lsp_settings = {
" \  'clangd': {'cmd': ['/usr/local/Cellar/llvm/16.0.6/bin/clangd']},
" \  'efm-langserver': {'disabled': v:false}
" \}

"   Tabing pop up menus.
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

"   NERDTree shortcuts :
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-p> :NERDTreeFind<CR>

nnoremap <C-s> :colorscheme gruvbox<CR>:set background=light<CR>
nnoremap <C-d> :colorscheme gruvbox<CR>:set background=dark<CR>
" nnoremap <C-d> :colorscheme breezy<CR> 

set clipboard+=unnamedplus

"set background=light
"colorscheme Atelier_CaveLight
set background=dark
colorscheme gruvbox
"colorscheme 256-grayvim

" let g:gruvbox_contrast_light='hard'

set backspace=indent,eol,start

