set title
set wildmode=longest,list
if has("gui_running")
	set makeprg=vim-make
	set grepprg=vim-grep
	set guioptions-=m  "remove menu bar
	:set guioptions-=T  "remove toolbar
	colorscheme slate
	set number
	set lines=60
	set columns=120
	set exrc
	filetype on
	filetype plugin on
	filetype indent on
	set secure
	match Error /\s\+$/

	:nnoremap <C-Tab> :bnext<CR>
	:nnoremap <C-S-Tab> :bprevious<CR>

	let vala_space_errors = 1
else
	syntax off
endif
