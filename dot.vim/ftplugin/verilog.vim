" ABBREVIATION
"iab <buffer> h@ #!/bin/csh -f<CR><CR><ESC>0i 
iab <buffer> be@  begin<CR>
                  \<Tab><CR>
                  \end
                  \<ESC><<1ka

iab <buffer> sw@  case ()<CR>
                  \<Tab> : begin<CR>
                  \<Tab><CR>
                  \end<ESC><<$a<CR>
                  \default: begin<CR>
                  \<Tab><CR>
                  \end<ESC><<$a<CR>
                  \endcase
                  \<ESC><<7kf)i

" COMMENT & UNCOMMNET BY VISUAL AND FUNCTION
let localComment = '//'
xnoremap # : norm! 0i<C-r>=localComment<CR><CR>
xnoremap ! : norm! ^2x<CR>

function! CommentOut()
  normal! 0i//
endfunction

function! UncommentOut()
  normal! ^2x
endfunction

nnoremap cm : call CommentOut()<CR>j
nnoremap cx : call UncommentOut()<CR>j