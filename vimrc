" #1 plugin usage
" #2 highlight off -> key mapping already exists
" #3 put together key mapping

"" basic setting
" disable unused features
set nobackup
set noswapfile
set autoread

" interface
syntax on
set number
set cursorline
set showmatch
set wildmenu
set backspace=indent,eol,start

" encoding
set encoding=utf-8
set fileencodings=utf-8,euc-jp,sjis,iso-2022-jp,
set fileformats=unix,dos,mac
scriptencoding utf-8

" tab
set expandtab
set tabstop=2
set shiftwidth=2

" search
set ignorecase
set smartcase
set incsearch
set wrapscan
set hlsearch

"" Advance setting
" key mapping
inoremap {{{ {%%}<LEFT><LEFT>
inoremap {{ {}<Left>
inoremap {<Enter> {}<Left><CR><ESC><S-o>
inoremap (( ()<ESC>i
inoremap (<Enter> ()<Left><CR><ESC><S-o>
inoremap [[ []<ESC>i
inoremap [<Enter> []<Left><CR><ESC><S-o>
inoremap "" ""<LEFT>
inoremap '' ''<LEFT>
inoremap << <><LEFT>
inoremap `` ``<LEFT>
" inoremap || ||<LEFT>
noremap j gj
noremap k gk
noremap <S-h>   ^
noremap <S-l>   $
nnoremap <silent><C-l> :<C-u>nohlsearch<CR><C-L>
nnoremap <C-]> g<C-]> 
inoremap <C-]> <ESC>g<C-]> 
inoremap jk <ESC>
inoremap kj <ESC>
inoremap <C-b> <Left>
inoremap <C-f> <Right>
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>
" leader
let mapleader = "\<Space>"

" Tag jump
set tags=./tags;$HOME

"" Plugin
call plug#begin('~/.vim/plugged')

" Interface
Plug 'scrooloose/nerdtree'
" this key mapping will delete because <C-t> function is valid.
" noremap <C-t> :NERDTreeToggle<CR>
nnoremap <silent> <space>j :NERDTreeToggle<CR>

" Brackets
Plug 'tpope/vim-surround'

" Ruby
Plug 'tpope/vim-endwise'

" Go
" memo
" ファイルをセーブする時GoFmtが走るので、
" importするモジュールを自動で補完する
" 使われていないモジュールは自動で消去される
" 自分でimport文を定義する必要がない
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
" let g:UltiSnipsExpandTrigger="<tab>" 
" let g:UltiSnipsJumpForwardTrigger="<tab>" 
" let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:go_fmt_command = "goimports"
let g:go_version_warning = 0
Plug 'SirVer/ultisnips'

" Emmet
Plug 'mattn/emmet-vim'
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

" Python
Plug 'davidhalter/jedi-vim'
let g:jedi#completions_command = "<C-N>"

" Javascript
Plug 'neovim/node-host', { 'do': 'npm install' }
Plug 'billyvg/tigris.nvim', { 'do': './install.sh' }

" Indent
Plug 'nathanaelkane/vim-indent-guides'
let g:indent_guides_enable_on_vim_startup = 1

" Vue
Plug 'posva/vim-vue'
autocmd FileType vue syntax sync fromstart

" Lint
Plug 'w0rp/ale'
let g:ale_lint_on_text_changed = 0

" Git
Plug 'airblade/vim-gitgutter'

" fzf
set rtp+=~/.fzf
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
nnoremap <silent> <space>fzf :GFiles<CR>
nnoremap <silent> <space>gfs :GFiles?<CR>
nnoremap <silent> <space>buf :Buffers<CR>
nnoremap <silent> <space>grep :BLines<CR>

" elm
Plug 'ElmCast/elm-vim', { 'for': 'elm' }

" Unsorted
" Plug 'SirVer/ultisnips'
Plug 'tomasr/molokai'
let g:molokai_original = 1
colorscheme darkblue

Plug 'ycm-core/YouCompleteMe'
let g:ycm_global_ycm_extra_conf = '${HOME}/.ycm_extra_conf.py'
let g:ycm_auto_trigger = 1
let g:ycm_min_num_of_chars_for_completion = 3
let g:ycm_autoclose_preview_window_after_insertion = 1
set splitbelow
let g:ycm_python_interpreter_path = '/usr/local/bin/python3'
let g:ycm_python_sys_path = []
let g:ycm_extra_conf_vim_data = [
  \  'g:ycm_python_interpreter_path',
  \  'g:ycm_python_sys_path'
  \]
let g:ycm_global_ycm_extra_conf = '~/global_extra_conf.py'

Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-fugitive'
Plug 'vim-scripts/closetag.vim'
call plug#end()
