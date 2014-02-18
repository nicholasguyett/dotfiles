set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
"" original repos on github
" Bundle 'tpope/vim-fugitive'
" Bundle 'Lokaltog/vim-easymotion'
" Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
" Bundle 'tpope/vim-rails.git'
" " vim-scripts repos
" Bundle 'L9'
" Bundle 'FuzzyFinder'
" " non github repos
" " Bundle 'git://git.wincent.com/command-t.git'
" " git repos on your local machine (ie. when working on your own plugin)
" Bundle 'file:///Users/gmarik/path/to/plugin'
Bundle 'tpope/vim-rails.git'
Bundle 'airblade/vim-gitgutter'
let g:gitgutter_realtime = 0 " disable realtime git updating
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-sensible'
Bundle 'scrooloose/syntastic'
Bundle 'Valloric/YouCompleteMe'
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_filepath_completion_use_working_dir = 1
Bundle 'kchmck/vim-coffee-script'

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..

" Display Settings
syntax on
colorscheme slate
set number
set nowrap
set list

" Layout settings
set tw=80
autocmd Filetype html setlocal tw=0
autocmd Filetype php setlocal tw=0

" Mouse Settings
set mouse=a

" Tab Settings
set expandtab
set shiftwidth=2
set ts=2
set tabstop=2
set smartindent
set autoindent

" Mappings
imap <Nul> _
imap <C-,> (
imap <C-.> )

" Meta Settings
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
