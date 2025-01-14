"" basic setting
" disable unused features
set nobackup           "バックアップファイルの出力を無効にする
set noswapfile         "swpファイルの出力を無効にする
set autoread           "編集中のファイルが変更されたら自動で読み直す

" interface
syntax on
set number             "行番号を表示
set autoindent         "改行時に自動でインデントする
set clipboard=unnamed  "ヤンクした文字列をクリップボードにコピー
set cursorline         "現在の行を強調表示
set showmatch          "入力したコマンドを画面右下に表示する
set wildmenu           "コマンドライン補完が拡張モードで行われる
set visualbell         "ビープ音を可視化
"* 挿入モードでバックスペースでの文字削除を有効にする
"* Viではバックスペースでの削除が出来ない
set backspace=indent,eol,start

" encoding
set encoding=utf-8     "エンコードをutf-8に指定
set fileencodings=utf-8,euc-jp,sjis,iso-2022-jp
set fileformats=unix,dos,mac
scriptencoding utf-8

" tab
set expandtab          "タブ入力を空白に変換
set tabstop=4          "タブを何文字の空白に変換するか
set shiftwidth=4       "自動インデント時に入力する空白の数

" search
set hlsearch           "検索した文字をハイライトする
set ignorecase         "大文字小文字を区別しないで検索する
set smartcase          "大文字が含まれている場合は"ignorecase"を上書きする
set incsearch          "入力時に順次対象文字列にヒットさせる
set wrapscan           "検索が末尾まで進んだら先頭から再び検索する

" netrw
"* set defautl view to tree view
let g:netrw_liststyle = 3

" key mapping
"* ノーマルモード
"* 文字列が折り返されていても一行ずつ移動
noremap j gj
noremap k gk
"* "H", "L"で行頭・行末に移動
noremap <S-h>   ^
noremap <S-l>   $
" ESC連打でハイライト解除
nmap <Esc><Esc> :nohlsearch<CR><Esc>
nnoremap <C-]> g<C-]> 
" Emacs風
" <C-n>, <C-p>はVim, Emacsで共通
" 画面を送る<C-f>, <C-b>はVimのデフォルトのままにする

" 挿入モード
inoremap <C-]> <ESC>g<C-]> 
" jk同時押しで挿入モードを抜ける
inoremap jk <ESC> 
inoremap kj <ESC>
" Emacs風
inoremap <C-b> <Left>
inoremap <C-f> <Right>
" Parentesis 補完
inoremap {{ {}<Left>
inoremap {<Enter> {}<Left><CR><ESC><S-o>
inoremap (( ()<ESC>i
inoremap (<Enter> ()<Left><CR><ESC><S-o>
inoremap [[ []<ESC>i
inoremap [<Enter> []<Left><CR><ESC><S-o>
inoremap << <><ESC>i
inoremap "" ""<LEFT>
inoremap '' ''<LEFT>
inoremap `` ``<LEFT>

" コマンドラインモード
"
" Emacs風
" <C-e>はVim, Emacsで共通
" コマンドラインモードのデフォルトのキーバインドでは、
" <C-b>が行頭に戻るキーになっているがEmacs風にするため<C-a>で上書きする
cnoremap <C-a> <C-b>
cnoremap <C-b> <Left>
cnoremap <C-f> <Right>

" leader
let mapleader = "\<Space>"

" Manage plugin with vim/jetpack
packadd vim-jetpack
call jetpack#begin()
Jetpack 'tani/vim-jetpack', {'opt': 1} "bootstrap
" Jetpack 'https://github.com/dense-analysis/ale'
Jetpack 'junegunn/fzf.vim'
Jetpack 'junegunn/fzf', { 'do': {-> fzf#install()} }
Jetpack 'lambdalisue/fern.vim' " Filer
Jetpack 'lambdalisue/fern-git-status.vim'
Jetpack 'vim-airline/vim-airline'
Jetpack 'vim-airline/vim-airline-themes'
" Jetpack 'NLKNguyen/papercolor-theme'
Jetpack 'scrooloose/nerdtree'
Jetpack 'tpope/vim-surround'
Jetpack 'airblade/vim-gitgutter'
Jetpack 'tpope/vim-fugitive'
" Jetpack 'lambdalisue/nerdfont.vim'
" Jetpack 'lambdalisue/fern-renderer-nerdfont.vim'
Jetpack 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Jetpack 'neoclide/coc.nvim', { 'branch': 'release' }
" Jetpack 'vlime/vlime', { 'rtp': 'vim' }
" Jetpack 'dracula/vim', { 'as': 'dracula' }
" Jetpack 'tpope/vim-fireplace', { 'for': 'clojure' }
call jetpack#end()

" Filer
" nnoremap <silent> <LEADER>u :Fern . -reveal=% -drawer -toggle -width=40<CR>
nnoremap <silent> <LEADER>y :Ex<CR>
nnoremap <silent> <LEADER>u :NERDTreeToggle<cr>

" Font
" let g:fern#renderer = 'nerdfont'

" Colorscheme
" colorscheme PaperColor
" set background=dark

" Fzf
set rtp+=~/.fzf


" Coc.nvim
" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
 
" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}
