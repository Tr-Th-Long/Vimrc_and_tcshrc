"============================================================
" FUNCTION
function! Heading(level)
  if      a:level == 1
    normal! 90i=^[o^M^[90i=^[k8i=^[5|82i ^[45|
  elseif  a:level == 2
    normal! 80i―^[o^M^[80i―^[k8i―^[5|72i ^[40|
  elseif  a:level == 3
    normal! 70i*^[o^M^[70i*^[k8i*^[5|62i ^[30|
  elseif  a:level == 4
    normal! 61i#^[o^M^[60i#^[k8i#^[5|52i ^[30|
  elseif  a:level == 5
"    normal! 50i>^[o^M^[50i<^[k4i<^[04i>^[5|42i ^[25|
    normal! 4i<^[04i>^[5|42i ^[25|
  elseif  a:level == 6
"    normal! 50i<^[o^M^[50i>^[k4i>^[04i<^[5|42i ^[25|
    normal! 4i>^[04i<^[5|42i ^[25|
  endif
endfunction

"============================================================
" KEY MAP

nnoremap <F1>  :call Heading(1)<CR>a
nnoremap <F2>  :call Heading(2)<CR>a
nnoremap <F3>  :call Heading(3)<CR>a
nnoremap <F4>  :call Heading(4)<CR>a
nnoremap <F5>  :call Heading(5)<CR>a
nnoremap <F6>  :call Heading(6)<CR>a

inoremap <F1>  <Esc>:call Heading(1)<CR>a
inoremap <F2>  <Esc>:call Heading(2)<CR>a
inoremap <F3>  <Esc>:call Heading(3)<CR>a
inoremap <F4>  <Esc>:call Heading(4)<CR>a
inoremap <F5>  <Esc>:call Heading(5)<CR>a
inoremap <F6>  <Esc>:call Heading(6)<CR>a
~