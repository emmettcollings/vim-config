" Requires vim-plug to load everything

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" PLUGINS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin()
  " Default vimrc stuff
  Plug 'tpope/vim-sensible'

  " Colorscheme
  Plug 'morhetz/gruvbox'

  " Status line
  Plug 'itchyny/lightline.vim'

  " File explorer
  Plug 'preservim/nerdtree'

  " Language support
  " Requires additional installation in plugins folder
  " Plug 'ycm-core/YouCompleteMe'
call plug#end()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" PLUGIN SETTINGS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Colorscheme
set termguicolors
colorscheme gruvbox
set background=dark

" Lightline colorscheme
let g:lightline = { 'colorscheme': 'gruvbox' }

" Lightline shows mode
set noshowmode

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" GENERAL
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" 1 tab == 2 spaces
set shiftwidth=2
set tabstop=2

" Helpful indenting stuff
set autoindent
set smartindent

" Return to last edit position when opening files
au BufReadPost * if line("'\"") > 1 && line("'\"") <=("$") | exe "normal! g'\"" | endif

" GVim font
if has("gui_running")
	set guifont=Cascadia_Mono:h10
endif
