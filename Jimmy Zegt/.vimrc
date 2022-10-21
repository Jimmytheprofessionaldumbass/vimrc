set nocompatible
filetype on
filetype plugin on
filetype indent on
syntax on
set number
set cursorline
set cursorcolumn
set tabstop=4
set expandtab
set nobackup
set scrolloff=10
set nowrap
set incsearch
set ignorecase
set showmatch
set hlsearch
set history=9999
set wildmenu
set wildmode=list:longest
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree'
Plug 'dense-analysis/ale'
Plug 'tpope/vim-commentary'
Plug 'vim-airline/vim-airline'
Plug 'junegunn/fzf.vim'

call plug#end()

autocmd VimEnter * NERDTree
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif
nnoremap <C-f> :NERDTreeToggle<CR>
