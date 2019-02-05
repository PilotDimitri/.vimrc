filetype plugin indent on
syntax on
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <delete> <nop>
set vb
set t_vb=
set number
map ,w <C-w><C-w>
set autoindent
set smartindent
map ,l :w!<CR>:!node %<CR>
set splitbelow
" uncomment if you need mouse support in the terminal
" set mouse=a

" shows incomplete commands
set showcmd

" shows a menu when using tab completion
set wildmenu

" if you use z<CR> shows 5 lines of context above
set scrolloff=5

" set highlight when you perform a search
set incsearch
set ignorecase
set smartcase

" has something to do with the text wrapping
set lbr

" sets the rights text highlighting color
set bg=light

" shows constantly in which file you are working
set laststatus=2
set statusline+=%F
set title

" you can change buffers without forcing it with shebang
set hidden

" tabstop: width of tab character
" softtabstop: fine tunes the amount of white space to be added
" shiftwidth: determines the amount of whitespace to add in normal mode
" expandtab: whn on uses space instead of tabs
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

" autocompletion
filetype plugin on
set omnifunc=syntaxcomplete#Complete

" autocomplete for the file path in insert mode
inoremap ,a <C-X><C-F>
" https://shapeshed.com/vim-netrw/
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 10 
augroup ProjectDrawer
  autocmd!
  autocmd VimEnter * :Vexplore
augroup END

" backup to ~/.tmp
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//
