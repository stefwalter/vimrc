au BufEnter,BufRead *.c,*.h call GnuFormat()

function! JavascriptFormat()
	setlocal softtabstop=4
	setlocal expandtab
	setlocal shiftwidth=4
endfunction
au FileType html,javascript call JavascriptFormat()
