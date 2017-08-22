au BufEnter,BufRead *.c,*.h call GnuFormat()

function! JavascriptFormat()
	setlocal softtabstop=4
	setlocal expandtab
	setlocal shiftwidth=4
endfunction
au FileType html,javascript call JavascriptFormat()

function! PythonFormat()
	setlocal softtabstop=4
	setlocal expandtab
	setlocal shiftwidth=4
	setlocal tabstop=4
endfunction
au FileType python call PythonFormat()

function! XmlFormat()
	setlocal softtabstop=2
	setlocal expandtab
	setlocal shiftwidth=2
endfunction
au FileType xml,docbk call XmlFormat()

function! ShFormat()
	setlocal softtabstop=4
	setlocal expandtab
	setlocal shiftwidth=4
	setlocal tabstop=4
endfunction
au FileType sh call ShFormat()

function! CssFormat()
	setlocal syntax=css
	setlocal softtabstop=4
	setlocal expandtab
	setlocal shiftwidth=4
endfunction
au FileType css call CssFormat()
au BufEnter,BufRead *.less call CssFormat()

