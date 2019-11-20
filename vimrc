" Plugins
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/seoul256.vim'
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


" TODO:
"   autocommenting
"   git blame / conflict resolution (vim-fugitive?)
"   vim-surround
"   project search (ag / the_silver_searcher?)
"   go to definition, ideally in split (ctags?)
"   syntax highlighting
"   fuzzy file search (fzf)
"     TODO: run from terminal, include dotfiles
"   Snippets
"   Matchit
"   Vim-Rooter: https://github.com/airblade/vim-rooter
"   Auto-Install vim-plug: https://github.com/junegunn/vim-plug/wiki/tips#automatic-installation
"   vim-rails: https://github.com/tpope/vim-rails
