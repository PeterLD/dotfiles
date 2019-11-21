" Auto-install vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


" Plugins
call plug#begin('~/.vim/plugged')
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/seoul256.vim'
Plug 'junegunn/goyo.vim'
Plug 'tpope/vim-surround'
call plug#end()


" Theme
try
  colo seoul256
  colo seoul256-light
  set background=dark
catch
  " Avoid error on first start
endtry


" Settings
set nocompatible

set autoindent
set shiftwidth=2
set softtabstop=2
set expandtab

syntax on
set number
set hlsearch
set incsearch


" Keybindings
nnoremap j gj
nnoremap k gk
nnoremap B ^
nnoremap E $
nnoremap <C-l> :noh<return><esc>
nnoremap <C-p> :FZF<return>
nnoremap <C-b> :Buffers<return>


" TODO:
"   Vim-Rooter: https://github.com/airblade/vim-rooter
"   project search (ag / the_silver_searcher?)
"   FZF: include dotfiles
"   autocommenting
"   git blame / conflict resolution (vim-fugitive?)
"   go to definition, ideally in split (ctags?)
"   syntax highlighting
"   Snippets
"   Matchit
"   vim-rails: https://github.com/tpope/vim-rails
