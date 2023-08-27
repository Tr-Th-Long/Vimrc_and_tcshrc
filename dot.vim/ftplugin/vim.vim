" ABBREVIATION
iab <buffer> fn@  function! ()<CR>
                  \<Tab>normal!<CR>
                  \<ESC>iendfunction
                  \<ESC>2kf!a

" COMMENT & UNCOMMNET BY VISUAL AND FUNCTION
let localComment = '"'
xnoremap # : norm! 0i<C-r>=localComment<CR><CR>
xnoremap ! : norm! ^1x<CR>

function! CommentOut()
  normal! 0i"
endfunction

function! UncommentOut()
  normal! ^1x
endfunction

nnoremap cm : call CommentOut()<CR>j
nnoremap cx : call UncommentOut()<CR>j