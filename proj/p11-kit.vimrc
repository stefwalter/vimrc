au BufEnter,BufRead *.c,*.h call StefFormat()

function! PythonFormat()
	setlocal softtabstop=4
	setlocal expandtab
	setlocal shiftwidth=4
	setlocal tabstop=4
endfunction

au FileType python call PythonFormat()
