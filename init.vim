call plug#begin('~/.nvim/plugged')

" autocompletion python
"Plug 'davidhalter/jedi-vim'

" autocomplete
" Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins' }

" autocomplete for python with jedi
" Plug 'zchee/deoplete-jedi'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdcommenter'
Plug 'preservim/nerdtree'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'sheerun/vim-polyglot'

Plug 'jremmen/vim-ripgrep'
" Plug 'tpope/vim-fugitive'
" Plug 'leafgarland/typescript-vim'
" Plug 'vim-utils/vim-man'
Plug 'mbbill/undotree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'Chiel92/vim-autoformat'
Plug 'tpope/vim-surround'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'


call plug#end()

syntax on 
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.nvim/undodir
set undofile
set incsearch

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

let g:dracula_colorterm = 0
colorscheme dracula

let g:airline_theme='deus'

if executable('rg')
    let g:rg_derive_root='true'
endif

let mapleader = " "

let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.8 } }
let $FZF_DEFAULT_OPTS='--reverse'

let g:autoformat_verbosemode=1
"let g:python3_host_prog="/usr/local/bin/python3"
"let g:jedi#completions_enabled = 0
"let g:jedi#show_call_signatures = "0"
"let g:jedi#use_splits_not_buffers = "right"


nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>nt :NERDTreeToggle<CR>

nnoremap <silent> <Leader>+ :vertical resize +5<CR> 
nnoremap <silent> <Leader>- :vertical resize -5<CR>
nnoremap <Leader>rp :resize 100<CR>

nnoremap <Leader>ps :Rg<SPACE>
"nnoremap <C-p> :GFiles<CR>
nnoremap <Leader>pg :GFiles<CR>
nnoremap <Leader>pf :Files<CR>

command! -nargs=0 Prettier :CocCommand prettier.formatFile

" GoTo code navigation.
nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gy <Plug>(coc-type-definition)
nmap <leader>gi <Plug>(coc-implementation)
nmap <leader>gr <Plug>(coc-references)
nmap <leader>rr <Plug>(coc-rename)
nmap <leader>g[ <Plug>(coc-diagnostic-prev)
nmap <leader>g] <Plug>(coc-diagnostic-next)
nmap <silent> <leader>gp <Plug>(coc-diagnostic-prev-error)
nmap <silent> <leader>gn <Plug>(coc-diagnostic-next-error)
nnoremap <leader>cr :CocRestart



