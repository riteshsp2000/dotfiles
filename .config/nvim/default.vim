set exrc " Source vimrc if specified in the folder
set guicursor " Always keep the cursor in block mode
set number
set relativenumber
set nohlsearch " Removes highlighting after it is done with
set hidden " Keeps buffer content in background
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nowrap " Wraps the text in the window
set smartcase

set noswapfile
set nobackup
set undodir=~/.config/nvim/undodir
set undofile

set incsearch " Highlights as we go on searching
set scrolloff=10
set noshowmode
set completeopt=menuone,noinsert,noselect
set signcolumn=number

set cmdheight=2 " Give more space for displaying messages
set  updatetime=50 " Shorter response time => faster updates

set shortmess+=c " Dont pass messages to ins-completion-menu

" Ignore files
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=**/coverage/*
set wildignore+=**/node_modules/*
set wildignore+=**/android/*
set wildignore+=**/ios/*
set wildignore+=**/.git/*