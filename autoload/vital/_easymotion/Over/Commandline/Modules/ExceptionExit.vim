scriptencoding utf-8
let s:save_cpo = &cpo
set cpo&vim

let s:module = {
\	"name" : "ExceptionExit",
\}


function! s:module.on_exception(cmdline)
	call a:cmdline.exit(-1)
endfunction


function! s:make(...)
	let result = deepcopy(s:module)
	let result.exit_code = get(a:, 1, 0)
	return result
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
" ___Revitalizer___
" NOTE: below code is generated by :Revitalize.
" Do not mofidify the code nor append new lines
if v:version > 703 || v:version == 703 && has('patch1170')
  function! s:___revitalizer_function___(fstr) abort
    return function(a:fstr)
  endfunction
else
  function! s:___revitalizer_SID() abort
    return matchstr(expand('<sfile>'), '<SNR>\zs\d\+\ze____revitalizer_SID$')
  endfunction
  let s:___revitalizer_sid = '<SNR>' . s:___revitalizer_SID() . '_'
  function! s:___revitalizer_function___(fstr) abort
    return function(substitute(a:fstr, 's:', s:___revitalizer_sid, 'g'))
  endfunction
endif

let s:___revitalizer_functions___ = {'make': s:___revitalizer_function___('s:make')}

unlet! s:___revitalizer_sid
delfunction s:___revitalizer_function___

function! vital#_easymotion#Over#Commandline#Modules#ExceptionExit#import() abort
  return s:___revitalizer_functions___
endfunction
" ___Revitalizer___
