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
set exrc
set secure

let g:loaded_sql_completion = 0

" clipboard
if system('uname -a | grep Microsoft') != ""
  let g:clipboard = {
    \   'name': 'myClipboard',
    \   'copy': {
    \      '+': 'win32yank.exe -i',
    \      '*': 'win32yank.exe -i',
    \    },
    \   'paste': {
    \      '+': 'win32yank.exe -o',
    \      '*': 'win32yank.exe -o',
    \   },
    \   'cache_enabled': 1,
    \ }
else
  set clipboard+=unnamedplus
endif

" dein.vim
source ~/.config/nvim/dein.vim

filetype indent on
filetype plugin indent on
syntax enable

" coc.nvim
source ~/.config/nvim/coc.vim

" format
nnoremap <silent> <Space>ff gg=G<C-o>

