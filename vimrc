set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#rc()

Plugin 'VundleVim/Vundle.vim'
"" original repos on github
" Plugin 'tpope/vim-fugitive'
" Plugin 'Lokaltog/vim-easymotion'
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Plugin 'tpope/vim-rails.git'
" " vim-scripts repos
" Plugin 'L9'
" Plugin 'FuzzyFinder'
" " non github repos
" " Plugin 'git://git.wincent.com/command-t.git'
" " git repos on your local machine (ie. when working on your own plugin)
" Plugin 'file:///Users/gmarik/path/to/plugin'
Plugin 'tpope/vim-rails.git'
Plugin 'airblade/vim-gitgutter'
let g:gitgutter_realtime = 0 " disable realtime git updating
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-sensible'
Plugin 'scrooloose/syntastic'
Plugin 'dsawardekar/ember.vim'
Plugin 'mustache/vim-mustache-handlebars'
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = ' -std=c++11 -stdlib=libc++ -wall'
Plugin 'kchmck/vim-coffee-script'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'wting/rust.vim'

filetype plugin indent on     " required!
"
" Brief help
" :PluginList          - list configured bundles
" :PluginInstall(!)    - install(update) bundles
" :PluginSearch(!) foo - search(or refresh cache first) for foo
" :PluginClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Plugin command are not allowed..

" Search settings
set ignorecase
set smartcase

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
set noexpandtab
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
