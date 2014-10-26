syntax on
set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar

" Highlight trailing spaces, needs to come before general colorscheme
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
au InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
au InsertLeave * match ExtraWhitespace /\s\+$/

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
	syntax match Todo /\t/
endfunction

function! AutomakeFormat()
	setlocal noexpandtab
	setlocal syntax=automake
        syntax match Todo /^ \+/
endfunction
autocmd BufEnter,BufRead *.am call AutomakeFormat()


" vala stuff
let vala_space_errors = 1
set errorformat+=%f:%l.%c-%[%^:]%#:\ %t%[%^:]%#:\ %m

let c_space_errors = 1
