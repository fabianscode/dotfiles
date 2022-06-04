" GENERAL ------------------------------------------------------------ {{{

" tabs
set tabstop=4 
set softtabstop=4
set expandtab
set shiftwidth=4
set autoindent

" general settings
set relativenumber 
set cc=110
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
" colorscheme purify

" filetypes
filetype on
filetype plugin on
filetype indent on
filetype plugin indent on

" }}}


" PLUGINS ---------------------------------------------------------------- {{{

if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
    Plug 'vim-scripts/SearchComplete'
    Plug 'itchyny/lightline.vim'
    Plug 'morhetz/gruvbox'
    Plug 'justinmk/vim-sneak'
    Plug 'preservim/nerdtree'
    Plug 'Xuyuanp/nerdtree-git-plugin'
    Plug 'airblade/vim-gitgutter'
    Plug 'kdheepak/lazygit.nvim'
call plug#end()

autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

" }}}


" MAPPINGS --------------------------------------------------------------- {{{

" NERDTree
nnoremap <C-h> :NERDTreeToggle<CR>

" lazygit
nnoremap <C-k> :LazyGit<CR>

" shortcut remapping
inoremap jj <Esc>

nmap <C-l> o<Esc>


" }}}


" VIMSCRIPT -------------------------------------------------------------- {{{

" Code folding
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END



" }}}


" STATUS LINE ------------------------------------------------------------ {{{

" Status bar code goes here.

" }}}
