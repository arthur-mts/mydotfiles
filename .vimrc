set nu
set laststatus=2
set noshowmode
syntax on
set ai

set expandtab
set smarttab
set tabstop=2
set shiftwidth=4

set clipboard=unnamed

" Configurações do Vundle
set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'itchyny/lightline.vim'
Plugin 'dracula/vim'
Plugin 'leafgarland/typescript-vim'
Plugin 'davidhalter/jedi-vim'
Plugin 'preservim/nerdtree'
Plugin 'editorconfig/editorconfig-vim'

call vundle#end()            " required
filetype plugin indent on


" Configuração do vim-plug
call plug#begin('~/.vim/plugged')

Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }
Plug 'dylanaraps/wal.vim'
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}

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
" color dracula
colorscheme dracula
" Configurações do Ctrl C
vmap <C-c> "+y

au BufNewFile,BufRead *.ts setlocal filetype=typescript
au BufNewFile,BufRead *.tsx setlocal filetype=typescript.tsx

