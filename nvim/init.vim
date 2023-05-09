set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set guicursor=
set relativenumber
set number
set nohlsearch
set hidden
set noerrorbells
set ignorecase
set smartcase
set noswapfile
set nobackup
set nowritebackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set scrolloff=8
set colorcolumn=80
set signcolumn=yes
set updatetime=300
set termguicolors
set exrc

call plug#begin()
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sbdchd/neoformat'
Plug 'junegunn/fzf.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-fugitive'
Plug 'ggandor/leap.nvim'
Plug 'tpope/vim-surround'
Plug 'numToStr/Comment.nvim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" colorschemes
Plug 'dracula/vim'
Plug 'overcache/NeoSolarized'
Plug 'NLKNguyen/papercolor-theme'
Plug 'folke/tokyonight.nvim'
call plug#end()

colorscheme dracula
set background=dark

let mapleader = " "
nnoremap <leader>ff :Files<CR>
nnoremap <leader>fb :Buffers<CR>
nnoremap <leader>fc :Colors<CR>

let g:coc_global_extensions = ['coc-clangd', 'coc-pyright', 'coc-json', 'coc-markdownlint', 'coc-java', 'coc-texlab']
let g:airline_theme = "bubblegum"

augroup vimrc
   autocmd!
   au FileType markdown let g:airline#extensions#whitespace#enabled = 0
augroup END
