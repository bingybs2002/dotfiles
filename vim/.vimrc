" Set Leader Key
let mapleader = " "

" General Settings
set relativenumber                     " Show relative line numbers
set number                             " Show absolute line number on the current line
set tabstop=2                        " Set tab width to 4 spaces
set modifiable                         " Allow file modification
set clipboard+=unnamedplus             " Use system clipboard
set encoding=utf-8                     " Use UTF-8 encoding
set mouse=a                            " Enable mouse support
set smarttab                    " Insert spaces according to tabstop
set autoindent                  " Copy indent from the current line Center the cursor after scrolling down or up
set smartindent                 " Automatically insert indent in some cases

set ignorecase                  " Ignore case when searching
set smartcase                   " Override ignorecase if search has uppercase
set incsearch                   " Show search matches as you type
set hlsearch                    " Highlight search results

set laststatus=2                " Always show the status line

nnoremap <C-d> <C-d>zz
set nobackup                    " Disable backup files
set nowritebackup               " Disable write backup files
set noswapfile                  " Disable swap files

set showmatch

nnoremap <C-u> <C-u>zz

" Center the cursor after searching forward or backward
nnoremap n nzzzv
nnoremap N Nzzzv

" Paste over a selection without overwriting the clipboard
xnoremap <leader>p "_dP

" Yank to the system clipboard
nnoremap <leader>y "+y
vnoremap <leader>y "+y
nnoremap <leader>Y "+Y

" Navigate the quickfix list while centering the cursor
nnoremap <C-k> :cnext<CR>zz
nnoremap <C-j> :cprev<CR>zz

" Navigate the location list while centering the cursor
nnoremap <leader>k :lnext<CR>zz
nnoremap <leader>j :lprev<CR>zz

" Search and replace the word under the cursor
nnoremap <leader>s :%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>

" NerdTree
nnoremap <leader>n :NERDTreeToggle<CR>

" Window switching
nnoremap <leader>w <C-w>w


"Status line for battery percentage
let g:battery#update_statusline = 1 " For statusline.

" Vim Plugins
call plug#begin()

" Plugin List
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.8' }
Plug 'preservim/nerdtree'
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
Plug 'lambdalisue/battery.vim'
Plug 'dense-analysis/ale'
Plug 'lambdalisue/battery.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
call plug#end()

" Telescope Keybindings
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Color Scheme
set termguicolors
colorscheme catppuccin-mocha
hi Normal guibg=#000000 ctermbg=0
