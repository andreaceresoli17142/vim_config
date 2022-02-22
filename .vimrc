call plug#begin()
Plug 'morhetz/gruvbox'
call plug#end()
autocmd vimenter * ++nested colorscheme gruvbox
set background=dark
syntax on
set number
" Highlight cursor line underneath the cursor horizontally.
set cursorline

" Highlight cursor line underneath the cursor vertically.
set cursorcolumn

set wildmenu

" Make wildmenu behave like similar to Bash completion.
set wildmode=list:longest

" There are certain files that we would never want to edit with Vim.
" Wildmenu will ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

set hlsearch
set showmatch
set tabstop=3
set autoindent
set linebreak
set wrap
set ruler
set laststatus=2
set noerrorbells
set foldmethod=indent
set foldnestmax=3
set backspace=indent,eol,start
set confirm
set history=1000
set nofoldenable
