syntax on
set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
colorscheme slate
set number
set columns=120
set exrc
filetype on
filetype plugin on
filetype indent on
set secure

nnoremap <C-Tab> :bnext<CR>
nnoremap <C-S-Tab> :bprevious<CR>

let g:netrw_list_hide= '.*\.swp$,^\..*'
let g:netrw_liststyle=3

"enable airline status bar
set laststatus=2

let $PATH=$PATH . ':~/.vim/bin'
set makeprg=vim-make
set grepprg=vim-grep

function! GlobalHighlights()
	call matchadd('Todo', '\s\+$', -1)
endfunction
autocmd Syntax * call GlobalHighlights()

function! StefFormat()
	setlocal noexpandtab
	setlocal copyindent
	setlocal preserveindent
	setlocal softtabstop=0
	setlocal cinoptions=L0,:0,l1,g0,t0,(0,u0,w1,m1
endfunction

function! GnuFormat()
        setlocal softtabstop=2
        setlocal expandtab
        setlocal cinoptions=>4,n-2,{2,^-2,:2,=2,g0,h2,p5,t0,+2,(0,u0,w1,m1
        setlocal shiftwidth=2
	call matchadd('Todo', '\t')
        match Todo /\t/
endfunction

function! MakeFormat()
	setlocal noexpandtab
	call matchadd('Todo', '^ \+')
endfunction

autocmd FileType make,automake call MakeFormat()

" vala stuff
let vala_space_errors = 1
set errorformat+=%f:%l.%c-%[%^:]%#:\ %t%[%^:]%#:\ %m

