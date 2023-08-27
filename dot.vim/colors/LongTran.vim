highlight clear
if exists("syntax_on")
  syntax reset
endif
set background=dark
let g:colors_namer="LongTran"

if ($TERM == "xterm") 
  set t_Co=256   "Enable 256-color mode  
endif
  
set cursorline cursorcolumn
hi      SpecialKey      term=bold ctermfg=81 
hi      NonText         term=bold ctermfg=12 
hi      Directory       term=bold ctermfg=159
hi      ErrorMsg        term=standout ctermfg=15 ctermbg=1 
hi      IncSearch       term=reverse ctermbg=0 ctermfg=11
hi      Search          term=bold ctermfg=22 ctermbg=11
hi      MoreMsg         term=bold ctermfg=121 
hi      ModeMsg         term=bold cterm=bold ctermfg=227
hi      LineNr          term=underline ctermfg=104 
hi      CursorLineNr    term=bold ctermfg=123
hi      Question        term=standout ctermfg=118 
hi      StatusLine      term=bold,reverse ctermfg=124 ctermbg=15
hi      StatusLineNC    term=reverse cterm=reverse ctermfg=19 ctermbg=15 
hi      VertSplit       term=reverse cterm=reverse ctermfg=45 "ctermbg=15 
hi      Title           term=bold ctermfg=225 
hi      Visual          term=reverse  cterm=reverse ctermbg=0 "ctermfg=3
hi      WarningMsg      term=standout ctermfg=224 
hi      WildMenu        term=standout ctermfg=0 ctermbg=11
hi      Folded          term=standout ctermfg=14 ctermbg=242 
hi      FoldColumn      term=standout ctermfg=14 ctermbg=242
hi      DiffAdd         term=none ctermbg=64 ctermfg=15 
hi      DiffChange      term=bold ctermbg=13
hi      DiffDelete      term=bold ctermfg=17 ctermbg=6 
hi      DiffText        term=reverse cterm=none ctermbg=09 ctermfg=15
hi      SignColumn      term=standout ctermfg=14 ctermbg=242 
hi      Conceal         ctermfg=7 ctermbg=242 
hi      SpellBad        term=reverse ctermbg=9 
hi      SpellCap        term=reverse ctermbg=12 
hi      SpellRare       term=reverse ctermbg=13 
hi      SpellLocal      term=underline ctermbg=14 
hi      Pmenu           ctermfg=15 ctermbg=52 
hi      PmenuSel        ctermfg=15 ctermbg=64 
hi      PmenuSbar       ctermbg=248 
hi      PmenuThumb      ctermbg=15 
hi      TabLine         term=underline cterm=underline ctermfg=15 ctermbg=242 
hi      TabLineSel      term=bold cterm=bold 
hi      TabLineFill     term=reverse cterm=reverse
hi      CursorColumn    cterm=bold ctermfg=15 ctermbg=88 
hi      CursorLine      cterm=bold ctermbg=240 
hi      ColorColumn     ctermfg=0  ctermbg=12
hi      MatchParen      term=reverse ctermbg=6
hi      Comment         term=bold ctermfg=153
hi      Constant        term=underline ctermfg=183 
hi      Special         term=bold ctermfg=224
hi      Identifier      term=underline cterm=bold ctermfg=159 "exist g:color_scheme
hi      Statement       term=bold ctermfg=210 "begin-end
hi      PreProc         term=none ctermfg=154
hi      Type            term=none ctermfg=45
hi      Underlined      term=none cterm=none ctermfg=11
hi      Ignore          ctermfg=0
hi      Error           term=reverse ctermfg=15 ctermbg=9
hi      Todo            term=standout ctermfg=0 ctermbg=11 
hi      Operator        ctermfg=11
hi      String          ctermfg=172
hi link Character       String
hi link Number          String
hi link Boolean         String 
hi link Float           String
hi link Function        Identifier
hi      Conditional     ctermfg=220 " if-else - case 
hi link Repeat          Conditional " Statement   "for loop
hi      Label           ctermfg=154
hi      Keyword         ctermfg=11
hi      Exception       ctermfg=11
hi link Include         PreProc
hi link Define          PreProc
hi link Macro           PreProc
hi link PreCondit       PreProc
hi link StorageClass    Type
hi link Structure       Type
hi link Typedef         Type
hi link Tag             Special
hi link SpecialChar     Special
hi link Delimiter       Special
hi link SpecialComment  Special
hi link Debug           Special