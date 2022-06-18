set number
set hidden
set exrc
set autoindent
set tabstop=4
set smarttab
set hidden
set scrolloff=8
set nohlsearch
set incsearch
set scrolloff=8
set signcolumn=yes

call plug#begin('~/.vim/plugged')

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'gruvbox-community/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tomlion/vim-solidity'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sheerun/vim-polyglot'
Plug 'mhinz/vim-signify' , { 'branch': 'legacy' }
Plug 'voldikss/vim-floaterm'

call plug#end()

colorscheme gruvbox

set updatetime=100

" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
let col = col('.') - 1
return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
\ pumvisible() ? "\<C-n>" :
\ <SID>check_back_space() ? "\<Tab>" :
\ coc#refresh()
" this allows to toggle NERDTree with [ctrl + b]
nnoremap <c-b> :NERDTreeToggle<cr>
" this allows to use FZF fuzzyfinder (:FZF) with [ctrl + F]
nnoremap <c-f> :FZF<cr>
" Configuration for floatterm
let g:floaterm_keymap_toggle = '<F12>'
