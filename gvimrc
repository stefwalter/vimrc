syntax on
set makeprg=~/.vim/bin/vim-make
set grepprg=~/.vim/bin/vim-grep
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

function! GlobalHighlights()
	call matchadd('Todo', '\s\+$', -1)
endfunction
autocmd Syntax * call GlobalHighlights()

function! StefIndent()
	setlocal noexpandtab
	setlocal copyindent
	setlocal preserveindent
	setlocal softtabstop=0
	setlocal cinoptions=L0,:0,l1,g0,t0,(0,u0,w1,m1
endfunction

function! GnuIndent()
        setlocal softtabstop=2
        setlocal expandtab
        setlocal cinoptions=>4,n-2,{2,^-2,:2,=2,g0,h2,p5,t0,+2,(0,u0,w1,m1
        setlocal shiftwidth=2
        match Todo /\t/
endfunction

" vala stuff
let vala_space_errors = 1
set errorformat+=%f:%l.%c-%[%^:]%#:\ %t%[%^:]%#:\ %m

