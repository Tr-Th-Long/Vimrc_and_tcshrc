"============================================================
" NORMAL SETTING
set noswapfile                   "do not create backup file, ~                                                                    
set nu rnu                       "number relativenumber 
set expandtab
set ts=2                         "tab stop
set sw=2                         "shift width
set nowrap  
set ignorecase
set nocompatible
set ai      
set hlsearch incsearch
set ruler   
set showmode
set showcmd 
set matchpairs+=<:>
"set mouse=a
set foldmethod=marker
"============================================================
" AUTO-COMPLETION

set complete+=kspell
set completeopt=menuone,longest

"============================================================
" STATUSLINE SETTING

set laststatus=2                "Set statusline always on
set statusline=   
set statusline+=\ %f            " Path to the file
set statusline+=\ %=            " Right align
set statusline+=\ Current:%-6l  " Current Line 
set statusline+=\ Total:%-6L    " Total Line 
set statusline+=\ Col:%-6c      " Column