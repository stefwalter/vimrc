function! JavascriptFormat()
	setlocal softtabstop=4
	setlocal expandtab
	setlocal shiftwidth=4
endfunction
au FileType html,javascript call JavascriptFormat()

function! SgmlFormat()
	setlocal softtabstop=4
	setlocal expandtab
	setlocal shiftwidth=4
endfunction
au FileType html,xml,docbk call SgmlFormat()

function! CssFormat()
	setlocal softtabstop=4
	setlocal expandtab
	setlocal shiftwidth=4
endfunction
au FileType css call CssFormat()
