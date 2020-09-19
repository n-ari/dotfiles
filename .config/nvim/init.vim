" config
set hidden
set fenc=utf-8
set nobackup
set noswapfile
set showcmd
set number
set cursorline
set cursorcolumn
set autoindent
set smartindent
set visualbell
set showmatch
set laststatus=2
set cmdheight=2
set expandtab
set shiftwidth=2
set tabstop=2
set incsearch
set wrapscan
set hlsearch
nnoremap <F3> :noh<CR>
set clipboard+=unnamedplus
set exrc
set secure

" dein.vim
source ~/.config/nvim/dein.vim

filetype indent on
filetype plugin indent on
syntax enable

" coc.nvim
source ~/.config/nvim/coc.vim


