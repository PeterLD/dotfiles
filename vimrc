" Auto-install vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


" Plugins
call plug#begin('~/.vim/plugged')
Plug '/usr/local/opt/fzf'
Plug 'airblade/vim-rooter'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/seoul256.vim'
Plug 'thaerkh/vim-workspace'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
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
syntax on
set nocompatible

set autoindent
set shiftwidth=2
set softtabstop=2
set expandtab

set number
set hlsearch
set incsearch

let g:netrw_liststyle = 3 " Default to tree list-style

" Keybindings
nnoremap j gj
nnoremap k gk
nnoremap B ^
nnoremap E $
nnoremap <C-l> :noh<return><esc>
nnoremap <C-p> :FZF<return>
nnoremap <C-b> :Buffers<return>
nnoremap <C-f> :Ag<return>
nnoremap <leader>t :Tags<return>
nnoremap <leader>b :BTags<return>


" TODO:
"   project search (ag / the_silver_searcher?)
"   FZF: include dotfiles
"   git blame / conflict resolution (vim-fugitive?)
"   go to definition, ideally in split (ctags?)
"   syntax highlighting
"   Snippets
"   Matchit
"   vim-rails: https://github.com/tpope/vim-rails
