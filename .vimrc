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
NeoBundle 'tpope/vim-surround'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'toyamarinyon/vim-swift'
" NeoBundle 'Keithbsmiley/swift.vim'

" markdown
NeoBundle 'plasticboy/vim-markdown'

" preview with browser
NeoBundle 'kannokanno/previm'
NeoBundle 'tyru/open-browser.vim'

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

" 文字コード
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,iso-2022-jp,sjis,euc-jp

" golang
let g:gofmt_command = 'goimports'

set rtp^=${GOROOT}/misc/vim
set rtp^=${GOPATH}/src/github.com/nsf/gocode/vim

au BufWritePre *.go Fmt
au BufNewFile,BufRead *.go set sw=4 expandtab ts=4 filetype=go
au FileType go compiler go

" php
let php_sql_query = 1
let php_baselib = 1
let php_htmlInStrings = 1
let php_noShortTags = 1
let php_parent_error_close = 1

au BufNewFile,BufRead *.php set sw=4 expandtab ts=4 sts=4 filetype=php
au BufNewFile,BufRead Gemfile set filetype=ruby

" markdown
au BufRead,BufNewFile *.md set filetype=markdown
