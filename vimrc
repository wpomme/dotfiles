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
set tabstop=4
set shiftwidth=4

" search
set ignorecase
set smartcase
set incsearch
set wrapscan
set hlsearch

" Typescript
augroup FiletypeGroup
    autocmd!
    " .ts is a Typescript file
    au BufNewFile,BufRead *.ts set filetype=typescript
augroup END

" Indent
if has("autocmd")
  filetype plugin on
  filetype indent on
  autocmd FileType c           setlocal sw=4 sts=4 ts=4 et
  autocmd FileType html        setlocal sw=2 sts=2 ts=2 et
  autocmd FileType ruby        setlocal sw=2 sts=2 ts=2 et
  autocmd FileType css         setlocal sw=2 sts=2 ts=2 et
  autocmd FileType typescript  setlocal sw=4 sts=4 ts=4 et
  autocmd FileType javascript  setlocal sw=4 sts=4 ts=4 et
  autocmd FileType java        setlocal sw=4 sts=4 ts=4 et
  autocmd FileType zsh         setlocal sw=4 sts=4 ts=4 et
  autocmd FileType python      setlocal sw=4 sts=4 ts=4 et
  autocmd FileType json        setlocal sw=4 sts=4 ts=4 et
endif

"" Advance setting
" key mapping
inoremap {{ {}<Left>
inoremap {<Enter> {}<Left><CR><ESC><S-o>
inoremap (( ()<ESC>i
inoremap (<Enter> ()<Left><CR><ESC><S-o>
inoremap [[ []<ESC>i
inoremap [<Enter> []<Left><CR><ESC><S-o>
inoremap "" ""<LEFT>
inoremap '' ''<LEFT>
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

" Ruby
Plug 'tpope/vim-endwise'

" Javascript
Plug 'billyvg/tigris.nvim', { 'do': './install.sh' }

" Vue
Plug 'posva/vim-vue'
autocmd FileType vue syntax sync fromstart

" Elixir
Plug 'elixir-editors/vim-elixir'

" Typescript
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'

" Lisp
Plug 'kovisoft/slimv'
let g:slimv_swank_cmd = '!osascript -e "tell application \"Terminal\" to do script \"sbcl --load ~/.vim/slime/start-swank.lisp\""'

" Git
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

" Repeat
Plug 'tpope/vim-repeat'

" Editor.config
Plug 'editorconfig/editorconfig-vim'

" filer
Plug 'scrooloose/nerdtree'
nnoremap <silent> <space>u :NERDTreeToggle<CR>
let NERDTreeIgnore = ['.[oa]$', '.(so)$', '.(tgz|gz|zip)$', '.out$', '.class$', '.jar$' ]

" Brackets
Plug 'tpope/vim-surround'

" Comment
Plug 'scrooloose/nerdcommenter'

" Emmet
Plug 'mattn/emmet-vim'
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

" GraphQL
Plug 'jparise/vim-graphql'

" Lint
Plug 'w0rp/ale'
let g:ale_lint_on_text_changed = 0
let b:ale_fixers = {'javascript': ['prettier', 'eslint']}

" fzf
set rtp+=~/.fzf
" Plug '/opt/homebrew/bin/fzf/install'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Color
Plug 'tomasr/molokai'
let g:molokai_original = 1
" colorscheme darkblue

" Styled components
Plug 'styled-components/vim-styled-components'

" Tagbar
Plug 'majutsushi/tagbar'

" Interface
Plug 'vim-airline/vim-airline'

" toml
Plug 'cespare/vim-toml'

" Unsorted
Plug 'vim-scripts/closetag.vim'

" experimental
" Use release branch (Recommend)
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
set signcolumn=yes

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
 
" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
" nmap <silent> gr <Plug>(coc-references)
 
" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current line.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of LS, ex: coc-tsserver
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" CocFloating Color
hi CocFloating ctermbg=8
