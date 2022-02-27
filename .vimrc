let &t_ut=''

if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif
set nocompatible

syntax enable
filetype plugin on

call plug#begin()

" Plug 'morhetz/gruvbox'
" Plug 'dracula/vim'
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'ycm-core/YouCompleteMe'

call plug#end()

set t_Co=256
" set cursorline
colorscheme onehalfdark

" autocmd vimenter * ++nested colorscheme onehalfdark

set background=dark

set number
set relativenumber
" Highlight cursor line underneath the cursor horizontally.
set cursorline

" Highlight cursor line underneath the cursor vertically.
set cursorcolumn

set hlsearch
set showmatch
set tabstop=3
set linebreak
set wrap
set ruler
set laststatus=2
set noerrorbells
set foldmethod=marker
set foldnestmax=3
set backspace=indent,eol,start
set confirm
set history=1000
"set nofoldenable
set showcmd

set path+=**

set wildmenu


" MANAGE FOLDS:
au BufWinLeave * mkview
au BufWinEnter * silent! loadview

"+----------------------------------------------------------+
" FILE BROWSING:

" Tweaks for browsing
let g:netrw_banner=0        " disable annoying banner
let g:netrw_browse_split=4  " open in prior window
let g:netrw_altv=1          " open splits to the right
let g:netrw_liststyle=3     " tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'

" NOW WE CAN:
" - :edit a folder to open a file browser
" - <CR>/v/t to open in an h-split/v-split/tab
" - check |netrw-browse-maps| for more mappings
"+----------------------------------------------------------+
" TAG JUMPING:

" Create the `tags` file (may need to install ctags first)
command! MakeTags !ctags -R .

" NOW WE CAN:
" - Use ^] to jump to tag under cursor
" - Use g^] for ambiguous tags
" - Use ^t to jump back up the tag stack

" THINGS TO CONSIDER:
" - This doesn't help if you want a visual list of tags"
"+----------------------------------------------------------+
" AUTOCOMPLETE:

" The good stuff is documented in |ins-completion|

" HIGHLIGHTS:
" - ^x^n for JUST this file
" - ^x^f for filenames (works with our path trick!)
" - ^x^] for tags only
" - ^n for anything specified by the 'complete' option

" NOW WE CAN:
" - Use ^n and ^p to go back and forth in the suggestion list
"   "+----------------------------------------------------------+
