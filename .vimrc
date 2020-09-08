
syntax on                           " Enables syntax highlighing
set tabstop=2 softtabstop=2             " Insert 2 spaces for a tab
set shiftwidth=2                        " Change the number of space characters inserted for indentation
set expandtab                           " Converts tabs to spaces
set smartindent                         " Makes indenting smart
set noerrorbells
set nu
set nowrap                              " Display long lines as just one line
set noswapfile
set nobackup                            " This is recommended by coc
set undodir=~/.vim/undodir
set undofile
set autoindent                          " Good auto indent
set cursorline
set incsearch
set mouse=a                             " Enable your mouse
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set nowritebackup                       " This is recommended by coc
set hlsearch
set ignorecase
set smartcase

set colorcolumn=100
highlight ColorColumn ctermbg=0 guibg=lightgrey

"Clear the search highlight by pressing ENTER when in Normal mode (Typing commands)
:nnoremap <CR> :nohlsearch<CR>/<BS><CR>

au! BufWritePost $MYVIMRC source %      " auto source when writing to init.vm alternatively you can run :source $MYVIMRC

" Move easily between panes
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

call plug#begin('~/.vim/plugged')

  Plug 'gruvbox-community/gruvbox'
  Plug 'tpope/vim-fugitive'
  Plug 'leafgarland/typescript-vim'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'airblade/vim-rooter'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'scrooloose/NERDTree'
  Plug 'mxw/vim-jsx'
  Plug 'pangloss/vim-javascript'
  Plug 'vim-airline/vim-airline'
  Plug 'jiangmiao/auto-pairs'
  Plug 'mhinz/vim-signify'

call plug#end()

let mapleader=" " 


""""""""""" NERDTree START """""""""""
function! ToggleNERDTree()
  NERDTreeToggle
  silent NERDTreeMirror
endfunction

map <C-n> :call ToggleNERDTree()<CR>

" start NERDTree when no files are specified
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" autoclose
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
""""""""""" NERDTree END   """""""""""

""""""""""" Prettier START """""""""""
" nmap <leader>pf :Prettier<CR>
nmap <Leader>pf <Plug>(Prettier)
let g:prettier#autoformat_require_pragma = 0
let g:prettier#config#print_width = 100
let g:prettier#config#single_quote = 'true'
""""""""""" Prettier END """""""""""

""""""""""" Tagbar START """""""""""
nmap <F8> :TagbarToggle<CR>
""""""""""" Tagbar END   """""""""""

""""""""""" Signify START """""""""""
set updatetime=100
""""""""""" Signify END   """""""""""


colorscheme gruvbox
set background=dark

source $HOME/.vim/plug_config/fzf.vim
source $HOME/.vim/plug_config/coc.vim

let @f='vi{ f'
let @b="F'r`f'r`"
