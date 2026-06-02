"SETTING
filetype plugin on 
runtime set.vim

"========================================================================================
"colorscheme monokai
colorscheme palenight

"========================================================================================
" ABBREVIATION
"iab {n  {<CR>}<ESC>O
"iab {   {}<ESC>i
"iab [   []<ESC>i
"iab (   ()<ESC>i
"iab "   ""<ESC>i
"iab '   ''<ESC>i
"iab `   ``<ESC>i

"========================================================================================
" MACRO
"let @z = "yyp"

"========================================================================================
" FUNCTION
runtime plugin/Surround.vim
runtime plugin/Heading.vim
"If vim Ctr-V and g-Ctr-A/X do column increase/decrease, do not need the below line
runtime plugin/GlobalIncDec.vim

"========================================================================================
" KEY MAP
let mapleader = " "

nnoremap <F7>         $"=strftime("%a, %d-%b-%Y -- %H:%M:%S ")<CR>p
inoremap <F8>         <End><C-R>=strftime("%a, %d-%b-%Y -- %H:%M:%S ")<CR>

nnoremap <M-Up>     <C-W>k
nnoremap <M-Down>   <C-W>j
nnoremap <M-Left>   <C-W>h
nnoremap <M-Right>  <C-W>l
nnoremap <S-Up>     :resize +3<CR>
nnoremap <S-Down>   :resize -3<CR>
nnoremap <S-Left>   :vertical resize -3<CR>
nnoremap <S-Right>  :vertical resize +3<CR>

nnoremap <leader>n    :set nu! <CR>
nnoremap <leader>w    :set wrap! <CR>
nnoremap <leader>l    :noh <CR>

"========================================================================================
" COMMAND
command! Cshtt  sp ~/.vim/tutors/CShell_Tutor
command! Pltt   sp ~/.vim/tutors/Perl_Tutor

"========================================================================================
