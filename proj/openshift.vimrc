function! JavascriptFormat()
	setlocal softtabstop=2
	setlocal expandtab
	setlocal shiftwidth=2
endfunction
au FileType html,javascript call JavascriptFormat()

function! XmlFormat()
	setlocal softtabstop=2
	setlocal expandtab
	setlocal shiftwidth=2
endfunction
au FileType xml,docbk call XmlFormat()
