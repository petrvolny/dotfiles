call plug#begin('~/.local/share/nvim/plugged')

" Fuzzy file search
Plug 'ctrlpvim/ctrlp.vim'
" Syntax highlighting
Plug 'sheerun/vim-polyglot'
" Syntax check
Plug 'w0rp/ale'
Plug 'iCyMind/NeoSolarized'
Plug 'phanviet/vim-monokai-pro'
" Git
Plug 'tpope/vim-fugitive'
" Code completion
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
let g:deoplete#enable_at_startup = 1
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"

call plug#end()

set termguicolors
colorscheme NeoSolarized
let g:neosolarized_contrast = "high"

" Code completion
autocmd FileType javavascript set omnifunc=javascriptcomplete#CompleteJS


" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase
set ruler
set relativenumber 
set number 

" UI
set t_Co=256
set smartindent
set ruler
set cursorline
set showmode
set showcmd
set tabstop=4
set shiftwidth=4
set expandtab
set nowrap
syntax on

autocmd BufWritePre *.js :%s/\s\+$//e
autocmd BufWritePre *.html :%s/\s\+$//e
autocmd BufWritePre *.scss :%s/\s\+$//e
autocmd BufWritePre *.less :%s/\s\+$//e

if has('statusline')
    set laststatus=2

"       " Broken down into easily includeable segments
    set statusline=%<%f\    " Filename
"       set statusline+=%w%h%m%r " Options
"       set statusline+=%{fugitive#statusline()} "  Git Hotness
"       set statusline+=\ [%{&ff}/%Y]            " filetype
"       set statusline+=\ [%{getcwd()}]          " current dir
    set statusline+=%=%-14.(%l,%c%V%)\ %p%%  " Right aligned file nav info
endif

" ctrlp ssttings
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

" Movement
nnoremap j gj
nnoremap k gk
" jj sends me back to normal mode
inoremap jj <ESC>

" append closing brackets
inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
" inoremap {{     {
 inoremap {}     {}

"" close brackets and quotes
inoremap (      ()<Left>
inoremap ((     (
inoremap ()     ()

inoremap [      []<Left>
inoremap [[     [
inoremap []     []

inoremap "      ""<Left>
inoremap ""     "

inoremap '      ''<Left>
inoremap ''     '
