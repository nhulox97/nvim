set nocompatible            " disable compatibility to old-time vi
set showmatch               " show machine 
set ignorecase              " case insensitive 
set hlsearch                " highlight search 
set incsearch               " incremental search
set tabstop=2               " number of columns occupied by a tab 
set softtabstop=2           " see multiple spaces as tab stops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=2            " width for auto indents
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
" save and quit
nnoremap <leader>w <cmd>wq<cr>
" quit all
nnoremap <leader>qa <cmd>qall<cr>
" reload file
map <C-e> :e<Cr>
" format all file
nnoremap <C-f> gg=G<Cr>

nnoremap <leader>nb <cmd>bNext<cr>

nmap <Leader>z 1z=
"########################### End My maps ###########################

" call plug#begin(stdpath('config') . '/plugged')




" Completion / linters / formatters



" Themes
" Plug 'sainnhe/gruvbox-material'
" Plug 'bluz71/vim-nightfly-colors'
" call plug#end()


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

let g:gitblame_display_virtual_text = 0
let g:gitblame_date_format = '%r'

