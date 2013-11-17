if has('vim_starting')
  set nocompatible               " Be iMproved
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/'))
" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'tpope/vim-commentary'
NeoBundle 'kana/vim-textobj-user'
NeoBundle 'kana/vim-textobj-entire'

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

" 補完
set wildmenu
set wildmode=full

" global
map <C-n> :cn<CR>
map <C-p> :cp<CR>
map <C-g>t :Gtags<CR>
map <C-g>c :GtagsCursor<CR>
