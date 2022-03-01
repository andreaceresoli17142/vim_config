" honestly i have no idea of what does this code do 
let &t_ut=''

if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

filetype plugin on

" plugins {{{
call plug#begin()

Plug 'jbgutierrez/vim-better-comments'
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'ycm-core/YouCompleteMe'
Plug 'preservim/nerdtree'
Plug 'ap/vim-css-color'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

call plug#end()
"}}}

" set colors scheme {{{
set t_Co=256
colorscheme onehalfdark
"}}}

" nerdtree {{{
autocmd VimEnter * NERDTree | wincmd p
nmap <C-f> :NERDTreeToggle<CR>
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
"}}}

"! not working
" set better comments plugin colors {{{
let g:ErrorBetterComments='#dc143c'
let g:HighlightBetterComments='#9acd32'
let g:QuestionBetterComments='#1e90ff'
" StrikeoutBetterComments
let g:TodoBetterComments='#ff8c00'
"}}}

" some minor settings {{{
" set cool row numbers
set number
set relativenumber

" disable vi compatibility
set nocompatible

" light up cursor column and row 
set cursorline
set cursorcolumn

" some fold settings 
set foldmethod=marker
set foldnestmax=3

" even minor changes
set hlsearch
set showmatch
set tabstop=3
set linebreak
set wrap
set ruler
set laststatus=2
set noerrorbells
set backspace=indent,eol,start
set confirm
set history=1000
set showcmd
syntax enable
"}}}

set path+=**

set wildmenu


" MANAGE FOLDS:
au BufWinLeave * mkview
au BufWinEnter * silent! loadview

" +----------------------------------------------------------+
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
" +----------------------------------------------------------+
" TAG JUMPING:

" Create the `tags` file (may need to install ctags first)
command! MakeTags !ctags -R .

" NOW WE CAN:
" - Use ^] to jump to tag under cursor
" - Use g^] for ambiguous tags
" - Use ^t to jump back up the tag stack

" THINGS TO CONSIDER:
" - This doesn't help if you want a visual list of tags"
" +----------------------------------------------------------+
" AUTOCOMPLETE:

" The good stuff is documented in |ins-completion|

" HIGHLIGHTS:
" - ^x^n for JUST this file
" - ^x^f for filenames (works with our path trick!)
" - ^x^] for tags only
" - ^n for anything specified by the 'complete' option

" NOW WE CAN:
" - Use ^n and ^p to go back and forth in the suggestion list
" +----------------------------------------------------------+
