" ABBREVIATION
iab <buffer> h@   #!/bin/csh -f<CR><CR><ESC>0i 
iab <buffer> if@  if () then<CR>
                  \<Tab><CR>
                  \else<ESC><<$a<CR>
                  \<Tab><CR>
                  \endif
                  \<ESC><<4kf)i

iab <buffer> sw@  switch ()<CR>
                  \<Tab>case :<CR>
                  \<Tab><CR>
                  \breaksw<CR>
                  \default:<ESC><<$a<CR>
                  \<Tab><CR>
                  \endsw
                  \<ESC><<<<6kf)i

iab <buffer> wh@  while ()<CR>
                  \<Tab><CR>
                  \end
                  \<ESC><<2kf)i

iab <buffer> fe@  foreach i ()<CR>
                  \<Tab><CR>
                  \end
                  \<ESC><<2kf)i

" COMMENT & UNCOMMNET BY VISUAL AND FUNCTION
let localComment = '#'
xnoremap #    : norm! 0i<C-r>=localComment<CR><CR>
xnoremap !    : norm! ^1x<CR>
xnoremap $    : norm! 0i<C-r>=localComment<CR>--OK--<C-r>=localComment<CR><CR>
xnoremap @    : norm! ^8x<CR>

function! CommentOut()
  normal! 0i#
endfunction

function! UncommentOut()
  normal! ^1x
endfunction

function! PCommentOut()
  normal! 0i#--OK--#
endfunction

function! PUncommentOut()
  normal! ^8x
endfunction

nnoremap cm  : call CommentOut()<CR>j
nnoremap cx  : call UncommentOut()<CR>j

nnoremap ccm : call PCommentOut()<CR>j
nnoremap ccx : call PUncommentOut()<CR>j