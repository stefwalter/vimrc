function! PythonFormat()
	setlocal softtabstop=8
	setlocal noexpandtab
	setlocal shiftwidth=8
	setlocal tabstop=8
endfunction
au FileType python call PythonFormat()
