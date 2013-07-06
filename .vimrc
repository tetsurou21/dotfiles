set iskeyword+=:

set number
set ruler
set laststatus=2

filetype plugin indent on
syntax on

" インデント
set autoindent
set expandtab
set tabstop=8
set shiftwidth=2
set softtabstop=2

" 検索
set ignorecase
set smartcase
set hlsearch

" ヘルプ
set helplang=ja

" global
map <C-n> :cn<CR>
map <C-p> :cp<CR>
map <C-g>t :Gtags<CR>
map <C-g>c :GtagsCursor<CR>
