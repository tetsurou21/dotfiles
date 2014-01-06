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
NeoBundle 'rking/ag.vim'

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
set incsearch

" 画面再描画時に検索ハイライトを消す
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>

" ヘルプ
set helplang=ja

" 補完
set wildmode=longest,list

" 履歴
set history=200
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>

" バッファ
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>

" 引数リスト
nnoremap <silent> [a :prev<CR>
nnoremap <silent> ]a :next<CR>

" アクティブなファイルが含まれるディレクトリ
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

" 対となるキーワードを拡張
runtime macros/matchit.vim

