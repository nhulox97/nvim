set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching 
set ignorecase              " case insensitive 
set hlsearch                " highlight search 
set incsearch               " incremental search
set tabstop=2               " number of columns occupied by a tab 
set softtabstop=2           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=2            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set number relativenumber
set termguicolors
set nobackup
set nowritebackup
" set wildmode=longest,list   " get bash-like tab completions
set cc=100                  " set an 80 column border for good coding style
filetype plugin indent on   "allow auto-indenting depending on file type
syntax on                   " syntax highlighting
set mouse=a                 " enable mouse click
set clipboard=unnamedplus   " using system clipboard
filetype plugin on
set cursorline              " highlight current cursorline
" set ttyfast                 " Speed up scrolling in Vim
" set spell                 " enable spell check (may need to download language package)
" set noswapfile            " disable creating swap file
" set backupdir=~/.cache/vim " Directory to store backup files.

"########################### Begin My maps ###########################
nnoremap <leader>oo <cmd>NvimTreeToggle<cr>
nnoremap <leader>of <cmd>NvimTreeFocus<cr>
command! -complete=file -nargs=1 Remove :echo 'Remove: '.'<f-args>'.' '.(delete(<f-args>) == 0 ? 'SUCCEEDED' : 'FAILED')
" save a file
nnoremap <leader>s <cmd>w<cr>
" quit from file
nnoremap <leader>x <cmd>q<cr>
" save and qui
nnoremap <leader>w <cmd>wq<cr>
" reload file
map <C-e> :e<Cr>
" select all file
nnoremap <C-a> ggVG<CR>
" format all file
nnoremap <C-f> gg=G<Cr>
"########################### End My maps ###########################

call plug#begin(stdpath('config') . '/plugged')
" Appearance
Plug 'nvim-lualine/lualine.nvim'
Plug 'ryanoasis/vim-devicons'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'frazrepo/vim-rainbow'

Plug 'akinsho/bufferline.nvim', { 'tag': '*' }
Plug 'Djancyp/better-comments.nvim'

"Utilities
Plug 'sheerun/vim-polyglot'
Plug 'jiangmiao/auto-pairs'
Plug 'ap/vim-css-color'

Plug 'nvim-tree/nvim-tree.lua'

Plug 'nvim-telescope/telescope.nvim', {'tag': '0.1.1'}
Plug 'nvim-lua/popup.nvim'

Plug 'nvim-treesitter/nvim-treesitter'
Plug 'nvim-neorg/neorg'
Plug 'Pocco81/true-zen.nvim'

" Completion / linters / formatters
Plug 'nvim-lua/plenary.nvim'
Plug 'plasticboy/vim-markdown'
Plug 'prettier/vim-prettier', {
      \ 'do': 'yarn install',
      \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }

Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'

Plug 'neovim/nvim-lspconfig'

Plug 'mfussenegger/nvim-dap'
Plug 'rcarriga/nvim-dap-ui'
Plug 'mfussenegger/nvim-lint'
Plug 'onsails/lspkind-nvim'

Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

Plug 'L3MON4D3/LuaSnip', {'tag': 'v2.*', 'do': 'make install_jsregexp'}
Plug 'saadparwaiz1/cmp_luasnip'

Plug 'elentok/format-on-save.nvim'

" Git
Plug 'airblade/vim-gitgutter'

" Themes
Plug 'sainnhe/gruvbox-material'
Plug 'folke/tokyonight.nvim'
Plug 'bluz71/vim-nightfly-colors'
call plug#end()


" Airline confs Begin
let g:airline#extensions#tabline#formatter = 'jsformatter'
" Airline confs End

" Telescope
" Using Lua functions
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

" Theme
colorscheme tokyonight-night


