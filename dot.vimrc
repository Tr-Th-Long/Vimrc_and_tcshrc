"
"SETTING
filetype plugin on 
runtime set.vim

"========================================================================================
"Colorscheme Customize
"colorscheme LongTran
"colorscheme monokai
colorscheme palenight


"========================================================================================
" MAP NAVIGATE IN POPUP AUTOCOMPLETION

" Navigate the complete menu items like CTRL+n / CTRL+p would.
"  inoremap <expr> <Down> pumvisible() ? "<C-n>" :"<Down>"
"  inoremap <expr> <Up> pumvisible() ? "<C-p>" : "<Up>"

" Select the complete menu item like CTRL+y would.
  inoremap <expr> <Right> pumvisible() ? "<C-y>" : "<Right>"
  inoremap <expr> <CR> pumvisible() ? "<Down><C-y>" :"<CR>"

" Cancel the complete menu item like CTRL+e would.
  inoremap <expr> <Left> pumvisible() ? "<C-e>" : "<Left>"
""
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
runtime plugin/GlobalIncDec.vim
runtime plugin/Heading.vim "

"========================================================================================
" KEY MAP
let mapleader = " "

nnoremap <F7>         $"=strftime("%a, %d-%b-%Y -- %H:%M:%S ")<CR>p
inoremap <F8>         <End><C-R>=strftime("%a, %d-%b-%Y -- %H:%M:%S ")<CR>

nnoremap <leader>1  1gt
nnoremap <leader>2  2gt
nnoremap <leader>3  3gt
nnoremap <leader>4  4gt
nnoremap <leader>5  5gt
nnoremap <leader>6  6gt
nnoremap <leader>7  7gt
nnoremap <leader>8  8gt
nnoremap <leader>9  9gt
nnoremap <leader>0  :tablast<CR>
nnoremap <C-Left>   :tabprevious<CR>
nnoremap <C-RIght>  :tabnext<CR>

nnoremap <M-Up>     <C-W>k
nnoremap <M-Down>   <C-W>j
nnoremap <M-Left>   <C-W>h
nnoremap <M-Right>  <C-W>l
nnoremap <S-Up>     :resize +3<CR>
nnoremap <S-Down>   :resize -3<CR>
nnoremap <S-Left>   :vertical resize -3<CR>
nnoremap <S-Right>  :vertical resize +3<CR>


nnoremap <leader>n    :set nu! rnu! <CR>
nnoremap <leader>w    :set wrap! <CR>
nnoremap <leader>l    :noh <CR>

"========================================================================================
" COMMAND

command! Cshtt  sp ~/.vim/tutors/CShell_Tutor
command! Pltt   sp ~/.vim/tutors/Perl_Tutor

"========================================================================================
" FILE BROWSING
let g:netrw_banner=0        " disable annoying banner
let g:netrw_browse_split=4  " open in prior window
let g:netrw_altv=1          " open splits to the right
let g:netrw_liststyle=3     " tree view

"========================================================================================