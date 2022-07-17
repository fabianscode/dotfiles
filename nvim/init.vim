" PLUGINS ---------------------------------------------------------------- {{{

if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
    Plug 'EdenEast/nightfox.nvim'
    Plug 'vim-scripts/SearchComplete'
    Plug 'itchyny/lightline.vim'
    Plug 'morhetz/gruvbox'
    Plug 'justinmk/vim-sneak'
    Plug 'preservim/nerdtree'
    Plug 'Xuyuanp/nerdtree-git-plugin'
    Plug 'airblade/vim-gitgutter'
    Plug 'dense-analysis/ale'
    Plug 'vim-autoformat/vim-autoformat'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

" }}}


" GENERAL ------------------------------------------------------------ {{{

"coc
set encoding=utf-8
set cmdheight=2
set updatetime=300

" tabs
set tabstop=4 
set softtabstop=4
set expandtab
set shiftwidth=4
set autoindent

" general settings
set number

augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
    autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
augroup END

set cc=110
highlight ColorColumn ctermbg=6
set clipboard=unnamedplus
set ttyfast
set showmatch 
set hlsearch 
set incsearch

" menu
set wildmenu
set wildmode=list:longest
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

" cursor
" set cursorline
" set cursorcolumn

" enable syntax
syntax on
syntax enable

colorscheme nightfox

" filetypes
filetype on
filetype plugin on
filetype indent on
filetype plugin indent on


" }}}


" MAPPINGS --------------------------------------------------------------- {{{

" NERDTree
nnoremap <C-h> :NERDTreeToggle<CR>

" lazygit
nnoremap <C-k> :LazyGit<CR>

" shortcut remapping
inoremap jj <Esc>

nmap <C-l> o<Esc>

" complete parentheses
inoremap ( ()<Esc>i
inoremap { {}<Esc>i

noremap <F3> :Autoformat<CR>

nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ CheckBackspace() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction


" }}}


" VIMSCRIPT -------------------------------------------------------------- {{{

" Code folding
"
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

" }}}


" STATUS LINE ------------------------------------------------------------ {{{

" Status bar code goes here.

" }}}
