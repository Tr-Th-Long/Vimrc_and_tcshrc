"============================================================
" FUNCTION
function! ChangeSurroundiFrom(char1)
  if      a:char1 == "double-quote"
    normal! mtF"maf"mb
  elseif  a:char1 == "single-quote"
    normal! mtF'maf'mb
  elseif  a:char1 == "grave-accent"
    normal! mtF`maf`mb
  elseif  a:char1 == "left-brace"       || a:char1 == "right-brace"
    normal! mtF{ma%mb
  elseif  a:char1 == "left-bracket"     || a:char1 == "right-bracket"
    normal! mtF[ma%mb
  elseif  a:char1 == "left-parenthesis" || a:char1 == "right-parenthesis"
    normal! mtF(ma%mb
  elseif  a:char1 == "word"
    normal! lmtbi ^[maea ^[mb
  elseif  a:char1 == "all-word"
    normal! lmtBi ^[maEa ^[mb
  endif
endfunction

function! ChangeSurroundTo(char1)
  if      a:char1 == "double-quote"
    normal! `ar"`br"`t
  elseif  a:char1 == "single-quote"
    normal! `ar'`br'`t
  elseif  a:char1 == "grave-accent"
    normal! `ar``br``t
  elseif  a:char1 == "left-brace"       || a:char1 == "right-brace"
    normal! `ar{`br}`t
  elseif  a:char1 == "left-bracket"     || a:char1 == "right-brack"
    normal! `ar[`br]`t
  elseif  a:char1 == "left-parenthesis" || a:char1 == "right-parenthesis"
    normal! `ar(`br)`t
  endif
endfunction

function! ChangeSurround(char1,char2)
  call ChangeSurroundiFrom(a:char1)
  call ChangeSurroundTo(a:char2)
endfunction

"============================================================
" KEY MAP

nnoremap <leader>"'         :call ChangeSurround("double-quote","single-quote"      )<CR>
nnoremap <leader>"`         :call ChangeSurround("double-quote","grave-accent"      )<CR>
nnoremap <leader>"{         :call ChangeSurround("double-quote","left-brace"        )<CR>
nnoremap <leader>"}         :call ChangeSurround("double-quote","right-brace"       )<CR>
nnoremap <leader>"[         :call ChangeSurround("double-quote","left-bracket"      )<CR>
nnoremap <leader>"]         :call ChangeSurround("double-quote","right-bracket"     )<CR>
nnoremap <leader>"(         :call ChangeSurround("double-quote","left-parenthesis"  )<CR>
nnoremap <leader>")         :call ChangeSurround("double-quote","right-parenthesis" )<CR>
nnoremap <leader>"<leader>  :normal! mtF"xf"x                                        <CR>`t

nnoremap <leader>'"         :call ChangeSurround("single-quote","double-quote"      )<CR>
nnoremap <leader>'`         :call ChangeSurround("single-quote","grave-accent"      )<CR>
nnoremap <leader>'{         :call ChangeSurround("single-quote","left-brace"        )<CR>
nnoremap <leader>'}         :call ChangeSurround("single-quote","right-brace"       )<CR>
nnoremap <leader>'[         :call ChangeSurround("single-quote","left-bracket"      )<CR>
nnoremap <leader>']         :call ChangeSurround("single-quote","right-bracket"     )<CR>
nnoremap <leader>'(         :call ChangeSurround("single-quote","left-parenthesis"  )<CR>
nnoremap <leader>')         :call ChangeSurround("single-quote","right-parenthesis" )<CR>
nnoremap <leader>'<leader>  :normal! mtF'xf'x                                        <CR>`t

nnoremap <leader>`"         :call ChangeSurround("grave-accent","double-quote"      )<CR><CR>
nnoremap <leader>`'         :call ChangeSurround("grave-accent","single-quote"      )<CR><CR>
nnoremap <leader>`{         :call ChangeSurround("grave-accent","left-brace"        )<CR><CR>
nnoremap <leader>`}         :call ChangeSurround("grave-accent","right-brace"       )<CR><CR>
nnoremap <leader>`[         :call ChangeSurround("grave-accent","left-bracket"      )<CR><CR>
nnoremap <leader>`]         :call ChangeSurround("grave-accent","right-bracket"     )<CR><CR>
nnoremap <leader>`(         :call ChangeSurround("grave-accent","left-parenthesis"  )<CR><CR>
nnoremap <leader>`)         :call ChangeSurround("grave-accent","right-parenthesis" )<CR><CR>
nnoremap <leader>`<leader>  :normal! mtF`xf`x                                        <CR><CR>`t

nnoremap <leader>{"         :call ChangeSurround("left-brace","double-quote"        )<CR>
nnoremap <leader>{'         :call ChangeSurround("left-brace","single-quote"        )<CR>
nnoremap <leader>{`         :call ChangeSurround("left-brace","grave-accent"        )<CR>
nnoremap <leader>{[         :call ChangeSurround("left-brace","left-bracket"        )<CR>
nnoremap <leader>{]         :call ChangeSurround("left-brace","right-bracket"       )<CR>
nnoremap <leader>{(         :call ChangeSurround("left-brace","left-parenthesis"    )<CR>
nnoremap <leader>{)         :call ChangeSurround("left-brace","right-parenthesis"   )<CR>
nnoremap <leader>{<leader>  :normal! mtF{xf}x                                        <CR>`t

nnoremap <leader>}"         :call ChangeSurround("right-brace","double-quote"       )<CR>
nnoremap <leader>}'         :call ChangeSurround("right-brace","single-quote"       )<CR>
nnoremap <leader>}`         :call ChangeSurround("right-brace","grave-accent"       )<CR>
nnoremap <leader>}[         :call ChangeSurround("right-brace","left-bracket"       )<CR>
nnoremap <leader>}]         :call ChangeSurround("right-brace","right-bracket"      )<CR>
nnoremap <leader>}(         :call ChangeSurround("right-brace","left-parenthesis"   )<CR>
nnoremap <leader>})         :call ChangeSurround("right-brace","right-parenthesis"  )<CR>
nnoremap <leader>}<leader>  :normal! mtF{xf}x                                        <CR>`t

nnoremap <leader>["         :call ChangeSurround("left-bracket","double-quote"      )<CR>
nnoremap <leader>['         :call ChangeSurround("left-bracket","single-quote"      )<CR>
nnoremap <leader>[`         :call ChangeSurround("left-bracket","grave-accent"      )<CR>
nnoremap <leader>[{         :call ChangeSurround("left-bracket","left-brace"        )<CR>
nnoremap <leader>[}         :call ChangeSurround("left-bracket","right-brace"       )<CR>
nnoremap <leader>[(         :call ChangeSurround("left-bracket","left-parenthesis"  )<CR>
nnoremap <leader>[)         :call ChangeSurround("left-bracket","right-parenthesis" )<CR>
nnoremap <leader>[<leader>  :normal! mtF[xf]x                                        <CR>`t

nnoremap <leader>]"         :call ChangeSurround("right-bracket","double-quote"     )<CR>
nnoremap <leader>]'         :call ChangeSurround("right-bracket","single-quote"     )<CR>
nnoremap <leader>]`         :call ChangeSurround("right-bracket","grave-accent"     )<CR>
nnoremap <leader>]{         :call ChangeSurround("right-bracket","left-brace"       )<CR>
nnoremap <leader>]}         :call ChangeSurround("right-bracket","right-brace"      )<CR>
nnoremap <leader>](         :call ChangeSurround("right-bracket","left-parenthesis" )<CR>
nnoremap <leader>])         :call ChangeSurround("right-bracket","right-parenthesis")<CR>
nnoremap <leader>]<leader>  :normal! mtF[xf]x                                        <CR>`t

nnoremap <leader>("         :call ChangeSurround("left-parenthesis","double-quote"  )<CR>
nnoremap <leader>('         :call ChangeSurround("left-parenthesis","single-quote"  )<CR>
nnoremap <leader>(`         :call ChangeSurround("left-parenthesis","grave-accent"  )<CR>
nnoremap <leader>({         :call ChangeSurround("left-parenthesis","left-brace"    )<CR>
nnoremap <leader>(}         :call ChangeSurround("left-parenthesis","right-brace"   )<CR>
nnoremap <leader>([         :call ChangeSurround("left-parenthesis","left-bracket"  )<CR>
nnoremap <leader>(]         :call ChangeSurround("left-parenthesis","right-bracket" )<CR>
nnoremap <leader>(<leader>  :normal! mtF(xf)x                                        <CR>`t

nnoremap <leader>)"         :call ChangeSurround("right-parenthesis","double-quote" )<CR>
nnoremap <leader>)'         :call ChangeSurround("right-parenthesis","single-quote" )<CR>
nnoremap <leader>)`         :call ChangeSurround("right-parenthesis","grave-accent" )<CR>
nnoremap <leader>){         :call ChangeSurround("right-parenthesis","left-brace"   )<CR>
nnoremap <leader>)}         :call ChangeSurround("right-parenthesis","right-brace"  )<CR>
nnoremap <leader>)[         :call ChangeSurround("right-parenthesis","left-bracket" )<CR>
nnoremap <leader>)]         :call ChangeSurround("right-parenthesis","right-bracket")<CR>
nnoremap <leader>)<leader>  :normal! mtF(xf)x                                        <CR>`t

nnoremap <leader>w"         :call ChangeSurround("word","double-quote"              )<CR>
nnoremap <leader>w'         :call ChangeSurround("word","single-quote"              )<CR>
nnoremap <leader>w`         :call ChangeSurround("word","grave-accent"              )<CR>
nnoremap <leader>w{         :call ChangeSurround("word","left-brace"                )<CR>
nnoremap <leader>w}         :call ChangeSurround("word","right-brace"               )<CR>
nnoremap <leader>w[         :call ChangeSurround("word","left-bracket"              )<CR>
nnoremap <leader>w]         :call ChangeSurround("word","right-bracket"             )<CR>
nnoremap <leader>w(         :call ChangeSurround("word","left-parenthesis"          )<CR>
nnoremap <leader>w)         :call ChangeSurround("word","right-parenthesis"         )<CR>

nnoremap <leader>W"         :call ChangeSurround("all-word","double-quote"          )<CR>
nnoremap <leader>W'         :call ChangeSurround("all-word","single-quote"          )<CR>
nnoremap <leader>W`         :call ChangeSurround("all-word","grave-accent"          )<CR>
nnoremap <leader>W{         :call ChangeSurround("all-word","left-brace"            )<CR>
nnoremap <leader>W}         :call ChangeSurround("all-word","right-brace"           )<CR>
nnoremap <leader>W[         :call ChangeSurround("all-word","left-bracket"          )<CR>
nnoremap <leader>W]         :call ChangeSurround("all-word","right-bracket"         )<CR>
nnoremap <leader>W(         :call ChangeSurround("all-word","left-parenthesis"      )<CR>
nnoremap <leader>W)         :call ChangeSurround("all-word","right-parenthesis"     )<CR>
                                                                                                                                                                                                                                                                                                                                                                                                                           Current:149    Total:149    Col:1
