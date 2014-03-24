set tabstop=8

au FileType c,cpp call GnuFormat()

function! JavascriptFormat()
	setlocal softtabstop=4
	setlocal expandtab
	setlocal shiftwidth=4
	call matchadd('Todo', '\t')
endfunction
au FileType html,javascript call JavascriptFormat()
