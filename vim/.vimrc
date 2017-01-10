set nocompatible               " be iMproved
filetype off                   " required!
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
  Plugin 'gmarik/Vundle.vim'
  Plugin 'kien/ctrlp.vim'
  Plugin 'tpope/vim-rails'
  Plugin 'kchmck/vim-coffee-script'
  Plugin 'scrooloose/nerdtree'
  Plugin 'vim-scripts/ctags.vim'
  Plugin 'vim-scripts/tComment'
  Plugin 'cakebaker/scss-syntax.vim'
  Plugin 'chriskempson/base16-vim'
  Plugin 'chriskempson/vim-tomorrow-theme'
  Plugin 'SirVer/ultisnips'
  Plugin 'honza/vim-snippets'
  Plugin 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}
  Plugin 'tpope/vim-fugitive'
  Plugin 'rking/ag.vim'
  Plugin 'jpo/vim-railscasts-theme'
  Plugin 'jeffkreeftmeijer/vim-numbertoggle'
call vundle#end()
filetype plugin indent on

""""""""""""""""""""""
"""""" SETTINGS """"""
""""""""""""""""""""""
"colorscheme Tomorrow-Night-Bright
colorscheme railscasts
set background=dark

" Tabs
set tabstop=2 "Sets indents to 2 spaces
set shiftwidth=2 "Sets indents to 2 spaces
set shiftround
set expandtab "Uses spaces instead of tabs
set list listchars=tab:»·,trail:· " Display extra whitespace

" Autodetect tab spacing by filetype
autocmd Filetype html setlocal ts=2 sw=2 expandtab
autocmd Filetype ruby setlocal ts=2 sw=2 expandtab
autocmd Filetype python setlocal ts=4 sw=4 expandtab
autocmd Filetype javascript setlocal ts=2 sw=2 expandtab

" Other settings
syntax on "Enables syntax highlighting
runtime macros/matchit.vim  "Enable matching code blocks
set nowrap
set number "Shows lines numbers
set cursorline "Highlights current line under cursor
set ruler
set colorcolumn=110 "Sets a visible line marker at line 110 (highlights column 111, left side=110)
set laststatus=2 "Shows the status bar even if there is only one buffer open
set timeoutlen=1000
set ttimeoutlen=100
set backspace=2 "Allows backspacing over everything in insert mode
set lazyredraw "Makes scrolling lag not as bad
set ttyfast "Force terminal to assume a fast connection
set t_Co=256
set splitbelow
set splitright
set hlsearch

" Powerline Settings
set guifont=Inconsolata\ for\ Powerline:h15
let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8

""""""""""""""""""""""
"""""" MAPPINGS """"""
""""""""""""""""""""""
" CtrlP
nnoremap <Bslash> :CtrlP<cr>
nnoremap <Leader>p :CtrlP<cr>
nnoremap <Leader>pp :CtrlPTag<cr>
nnoremap <Leader>pb :CtrlPBuffer<cr>

" Tags
nnoremap <Leader>]i :!ctags -R .<CR> " Index ctags from any project, including those outside Rails
nnoremap <Leader>]v :vsp <CR>:exec("tag ".expand("<cword>"))<CR> " open tag definition in new vsplit window

