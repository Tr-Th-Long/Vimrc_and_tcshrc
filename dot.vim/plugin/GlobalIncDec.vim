"============================================================
" FUNCTION

function! YankAndIncrement()
  normal! yyp^A
endfunction

function! YankAndDecrement()
  normal! yyp^X
endfunction

function! YankAndIncrementLast()
  normal! yyp$^A
endfunction

function! YankAndDecrementLast()
  normal! yyp$^X
endfunction

function! VisualIncrement() range
  let l:counter = a:lastline - a:firstline
  let i = 0
  while i <= l:counter
    if i == 0
      let i += 1
      normal! j
      continue
    endif
    let k = 1
    while k <= i
      normal! ^A
      let k += 1
    endwhile
    normal! jh
    let i += 1
  endwhile
    normal! k
endfunction

function! VisualDecrement() range
  let l:counter = a:lastline - a:firstline
  let i = 0
  while i <= l:counter
    if i == 0
      let i += 1
      normal! j
      continue
    endif
    let k = 1
    while k <= i
      normal! ^X
      let k += 1
    endwhile
    normal! jh
    let i += 1
  endwhile
    normal! k
endfunction

function! VisualIncrementLast() range
  let l:counter = a:lastline - a:firstline
  let i = 0
  while i <= l:counter
    if i == 0
      let i += 1
      normal! j^
      continue
    endif
    let k = 1
    while k <= i
      normal! $^A
      let k += 1
    endwhile
    normal! j^
    let i += 1
  endwhile
    normal! k^
endfunction

function! VisualDecrementLast() range
  let l:counter = a:lastline - a:firstline
  let i = 0
  while i <= l:counter
    if i == 0
      let i += 1
      normal! j^
      continue
    endif
    let k = 1
    while k <= i
      normal! $^X
      let k += 1
    endwhile
    normal! j^
    let i += 1
  endwhile
    normal! k^
endfunction

function! ManualIncrement()
  let l:counter = v:prevcount
  let i = 0
  normal! k^
  while i <= counter
    if i == 0
      let i += 1
      normal! j^
      continue
    endif
    let k = 1
    while k <= i
      normal! ^A
      let k += 1
    endwhile
    normal! j^
    let i += 1
  endwhile
endfunction

function! ManualDecrement()
  let l:counter = v:prevcount
  let i = 0
  normal! k^
  while i <= counter
    if i == 0
      let i += 1
      normal! j^
      continue
    endif
    let k = 1
    while k <= i
      normal! ^X
      let k += 1
    endwhile
    normal! j^
    let i += 1
  endwhile
endfunction

function! ManualIncrementLast()
  let l:counter = v:prevcount
  let i = 0
  normal! k^
  while i <= counter
    if i == 0
      let i += 1
      normal! j^
      continue
    endif
    let k = 1
    while k <= i
      normal! $^A
      let k += 1
    endwhile
    normal! j^
    let i += 1
  endwhile
endfunction

function! ManualDecrementLast()
  let l:counter = v:prevcount
  let i = 0
  normal! k^
  while i <= counter
    if i == 0
      let i += 1
      normal! j^
      continue
    endif
    let k = 1
    while k <= i
      normal! $^X
      let k += 1
    endwhile
    normal! j^
    let i += 1
  endwhile
endfunction

"============================================================
" KEY MAP

nnoremap <leader><leader>a    :call YankAndIncrement()<CR>
nnoremap <leader><leader>as   :call YankAndIncrementLast()<CR>
nnoremap <leader><leader>x    :call YankAndDecrement()<CR>
nnoremap <leader><leader>xs   :call YankAndDecrementLast()<CR>

vnoremap <leader>a            :call VisualIncrement()<CR>
vnoremap <leader>as           :call VisualIncrementLast()<CR>
nnoremap <leader>a            :call ManualIncrement()<CR><ESC>
nnoremap <leader>as           :call ManualIncrementLast()<CR><ESC>

vnoremap <leader>x            :call VisualDecrement<CR>
vnoremap <leader>xs           :call VisualDecrementLast()<CR>
nnoremap <leader>x            :call ManualDecrement<CR><ESC>
nnoremap <leader>xs           :call ManualDecrementLast<CR><ESC>