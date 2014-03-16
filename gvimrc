set makeprg=vim-make
set grepprg=vim-grep
set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
colorscheme slate
set number
set lines=55
set columns=120
set exrc
filetype on
filetype plugin on
filetype indent on
set secure
match Error /\s\+$/

nnoremap <C-Tab> :bnext<CR>
nnoremap <C-S-Tab> :bprevious<CR>

" vala stuff
let vala_space_errors = 1
set erroformat .= %f:%1.%c-%[%^:]%#:\ %t%[%^:]%#:\ %m
