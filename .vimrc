call jetpack#begin()
Jetpack 'lambdalisue/fern.vim'
Jetpack 'lambdalisue/nerdfont.vim'
Jetpack 'itchyny/lightline.vim'
Jetpack 'lambdalisue/fern-renderer-nerdfont.vim'
call jetpack#end()

syntax on
filetype plugin indent on

""" Fern
" Show hidden files
" let g:fern#default_hidden=1

" Set loader to space
" <Space> + f will launch Fern as drawer
" nnoremap <silent> <Leader>f :<C-u>Fern . -drawer<CR>
" nnoremap <silent> <Leader>f :<C-u>Fern .<CR>
"
"augroup FernGroup
"  autocmd!
"  autocmd FileType fern setlocal norelativenumber | setlocal nonumber | call FernInit()
"augroup END
nnoremap <C-n> :Fern . -reveal=% -drawer -toggle -width=40
"nnoremap fd :Fern . -reveal=% -drawer -toggle -width=40<CR>
"nnoremap fs :Fern . -reveal=%<CR>

" Eneble font icon
let g:fern#renderer = 'nerdfont'

" Color
"
"colorscheme molokai
"let g:rehash256 = 1
"
colorscheme abstract
" colorscheme molokai

" Lightline
set laststatus=2
let g:lightline = { 'colorscheme': 'wombat' }


" Line number
set number
set relativenumber
" set cursorline

" Search
set hlsearch
set incsearch

" Indent
"set smartindent
"set tabstop=2
set expandtab
"set shiftwidth=2
set ts=2 sts=-1 sw=0
" softtabstop sts → 負数にすると shiftwidth (sw) に従う
" shiftwidth sw → ０にすることで、 tabstop に従う

" Command line completion
set wildmenu

