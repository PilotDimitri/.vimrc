syntax on
" autocomplete 
set omnifunc=syntaxcomplete#complete
let g:tern_map_keys=1
let g:tern_show_argument_hints="on_hold"

" just to save the content of the file
map <space> :w!<cr>

map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <delete> <nop>
set vb
set t_vb=
set number
set autoindent
set smartindent
map ,l :w!<cr>:!node %<cr>
set splitbelow


" always be in the current directory of the file
set autochdir

" shows incomplete commands
set showcmd

" shows a menu when using tab completion
set wildmenu

" if you use z<cr> shows 5 lines of context above
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
set statusline+=%f\ \%{percent()}%%
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
set omnifunc=syntaxcomplete#complete

" autocomplete for the file path in insert mode
inoremap <c-a> <c-x><c-f>

" autocomplete tern.js 
" inoremap ,l <c-x><c-o>

" switch back to the previous window
map <c-b> <c-w><c-p>

" backup to ~/.tmp
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//

"provides tab-completion for all file-related tasks
set path+=**


" highlight search
set hlsearch

"this unsets the "last search pattern" register by hitting return
nnoremap <cr> :noh<cr><cr>

" this makes the explorer visible when you open a file with vim
let g:netrw_banner = 0
let g:netrw_winsize=15
let g:netrw_liststyle=3
let g:netrw_browse_split = 4 

augroup projectdrawer
  autocmd!
  autocmd vimenter * :lexplore!
augroup END

" Set current file to the working directory
"set autochdir

" Switching between buffers
nnoremap sh :ls<CR>:b<Space>
nnoremap sw :bn<CR>

" When starting vim put cursor to another buffer
au VimEnter * wincmd h

" shows the percentage of the file left
function! Percent()
  let byte = line2byte( line( "." ) ) + col( "." ) - 1
  let size = (line2byte( line( "$" ) + 1 ) - 1)
  " return byte . " " . size . " " . (byte * 100) / size
  return (byte * 100) / size
endfunction

" activate pathogen plugin
execute pathogen#infect()

" deleting the netrwlisting files
autocmd FileType netrw setl bufhidden=delete
