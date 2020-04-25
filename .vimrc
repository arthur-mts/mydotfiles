" Configurações de digitação e sintaxe

set nu
set laststatus=2
set noshowmode
syntax on
set ai
set expandtab
set smarttab
set tabstop=2
set shiftwidth=4

" Configuranado o clipboard
set clipboard=unnamed

" Configurações do Vundle
set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
" Snipets para HTML
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Barra inferior
Plugin 'itchyny/lightline.vim'
" Tema
Plugin 'dracula/vim'
" Configuração do typescript
Plugin 'leafgarland/typescript-vim'
" Configuração do python
Plugin 'davidhalter/jedi-vim'
" Barra de arquivos
Plugin 'preservim/nerdtree'
" Editor config msm
Plugin 'editorconfig/editorconfig-vim'
call vundle#end()            " required
filetype plugin indent on


" Configuração do vim-plug
call plug#begin('~/.vim/plugged')

Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }
" Coisas que permitem o autocomplete do ts e js
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
Plug 'sbdchd/neoformat'
Plug 'w0rp/ale'

call plug#end()

" Configurações do LightLine
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'readonly', 'filename', 'modified', 'charvaluehex' ] ]
      \ },
      \ 'component': {
      \   'charvaluehex': '0x%B'
      \ },
      \ }

" Configurações do prettier e eslint
let g:ale_fixers = {
 \ 'javascript': ['eslint'],
 \ 'typescript': ['eslint'] 
 \ }

let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️'
let g:ale_fix_on_save = 1

" color dracula
colorscheme dracula
" Configurações do Ctrl C
vmap <C-c> "+y

au BufNewFile,BufRead *.ts setlocal filetype=typescript
au BufNewFile,BufRead *.tsx setlocal filetype=typescript.tsx
autocmd BufWritePre *.ts Neoformat
