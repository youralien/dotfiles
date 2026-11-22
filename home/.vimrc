" Auto-install vim-plug on a fresh machine, then install any missing plugins.
let s:plug = expand('~/.vim/autoload/plug.vim')
if empty(glob(s:plug))
  silent execute '!curl -fLo ' . s:plug . ' --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
Plug 'tpope/vim-commentary'
Plug 'airblade/vim-gitgutter'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'nvie/vim-flake8'
Plug 'lervag/vimtex'
call plug#end()

set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

" Use relative line numbers, helpful for releative yank or delete, i.e. y4 d7 commmands
set relativenumber
