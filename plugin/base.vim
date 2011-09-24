set backupdir=~/.vim/backup
set directory=~/.vim/backup

" Remove any trailing whitespace that is in the file
autocmd BufRead,BufWrite * if ! &bin | silent! %s/\s\+$//ge | endif

" Edit vimrc \ev
nnoremap <silent> <Leader>ev :tabnew<CR>:e ~/.vimrc<CR>

" Next Tab
nnoremap <silent> <C-l> :tabnext<CR>

" Previous Tab
nnoremap <silent> <C-h> :tabprevious<CR>

" New Tab
nnoremap <silent> <C-t> :tabnew<CR>

"Status line gnarliness
set laststatus=2
set statusline=%F%m%r%h%w\ (%{&ff}){%Y}\ [%l,%v][%p%%]

" When I close a tab, remove the buffer
set nohidden

" Swap ; and :
nnoremap ; :
nnoremap : ;

" Enable mouse support
set ttymouse=xterm2
set mouse=a

" Search as you type
set incsearch

" Use 2-space tabs
set softtabstop=2
set shiftwidth=2
set tabstop=2
set expandtab
