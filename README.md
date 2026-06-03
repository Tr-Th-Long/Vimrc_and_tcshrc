This repository contain .cshrc (complementary file), .vimrc and .vim folder comealong with previous file.
Strucure:
.
|-dot.cshrc
|-dot.vimrc
|-dot.vim
  |-...

# VIM COLORSCHEME
- Below are the original repositories github. Files colorscheme in the .vim folder are modded
- [palenight](https://github.com/drewtempelmeyer/palenight.vim)
- [monokai](https://github.com/crusoexia/vim-monokai)
- [monokai_pro](https://github.com/phanviet/vim-monokai-pro)

# VIM COLOR CHEAT SHEET
- [this_A](https://www.ditig.com/256-colors-cheat-sheet)
- [this_B](https://martin-thoma.com/colors-in-vim/)

# VIM SCRIPT
0. [Vimscript_learn](https://learnvimscriptthehardway.stevelosh.com/)
1. [Vimscript_cheatsheet](https://devhints.io/vimscript-functions)
2. [Vimscript_Function](https://learnvim.irian.to/vimscript/vimscript_functions)
3. [Vimscript function range only applying to the first line](https://stackoverflow.com/questions/28968745/vimscript-function-range-only-applying-to-the-first-line)
4. [key bindings - How to get the number used before a command as an argument?](https://vi.stackexchange.com/questions/17241/how-to-get-the-number-used-before-a-command-as-an-argument)
5. [internal_variable](https://vimdoc.sourceforge.net/htmldoc/eval.html)
6. [Mapping with v:count in vim](https://stackoverflow.com/questions/23877429/mapping-with-vcount-in-vim)
7. [How to use a value stored in a variable in the command mode?](https://vi.stackexchange.com/questions/16711/how-to-use-a-value-stored-in-a-variable-in-the-command-mode)

# VIM PLUGIN
- [MultipleSearch](https://github.com/vim-scripts/MultipleSearch)
- [quickhl](https://github.com/t9md/vim-quickhl)

# VIM CONFIGURE
Main official link: [this](https://vimhelp.org/)
0. Vim Trick
  [Repeating characters in VIM insert mode](https://stackoverflow.com/questions/5054128/repeating-characters-in-vim-insert-mode)
1. File type
   - [Article_1](https://ejmastnak.com/tutorials/vim-latex/vimscript/)
   - [Article_2](https://vimdoc.sourceforge.net/htmldoc/filetype.html)
   - [Video](https://www.youtube.com/watch?v=uQWn7UXUuBs)
2. Set option
   - [vimhelp](https://vimhelp.org/options.txt.html#options)
   - [vimdoc](https://vimdoc.sourceforge.net/htmldoc/options.html#%27runtimepath%27)
3. Key notation
   - [vimhelp](https://vimhelp.org/intro.txt.html#download)
4. Autogroup - Autocmd - Abbreiation
   - [Abbreviation](https://aavtech.site/blog/vim-abbreviations/)
   - Autogroup ?
   - Autocmd ?
5. Syntax highlight
   - [vimhelp](https://vimhelp.org/syntax.txt.html#%3Ahi-normal-cterm)
   - Explain
```
*Comment	         any comment
*Constant          any constant
 String            a string constant: "thisisastring"
 Character         a character constant: 'c', '\n'
 Numbera           number constant: 234, 0xff
 Boolean           a booleanconstant: TRUE,falseFloata floating constant:2.3e10
*Identifier	       any variable name
 Function	         function name (also: methods for classes)
*Statement	       any statement
 Conditional	     if, then, else, endif, switch, etc.
 Repeat		         for, do, while, etc.
 Label		         case, default, etc.
 Operator	         "sizeof", "+", "*", etc.
 Keyword	         any other keyword
 Exception	       try, catch, throw
*PreProc           generic Preprocessor
 Include	         preprocessor #include
 Define		         preprocessor #define
 Macro		         sameas Define
 PreCondit	       preprocessor #if, #else, #endif, etc.
*Type		           int, long, char, etc.
 StorageClass	     static, register, volatile, etc.
 Structure	       struct, union, enum, etc.
 TypedefA          typedef
*Special	         any special symbol
 SpecialChar	     special character ina constant
 Tag		           you can useCTRL-] on this
 Delimiter	       character that needs attention
 SpecialComment	   special things insidea comment
 Debug		         debugging statements
*Underlined	       text that stands out, HTML links
*Ignore		         left blank, hiddenhl-Ignore
*Error		         any erroneous construct
*Todo		           anything that needs extra attention; mostly the
```

# TERMINATOR
- TBD

# LINUX/UNIX
  1. Explain:
     - [link_1](https://man7.org/linux/man-pages/man1/find.1.html) - [link_2](https://www.computerhope.com/unix/ufind.htm)
  2. command find with usage
     - [link_1](https://unix.stackexchange.com/questions/102191/find-with-multiple-name-and-exec-executes-only-the-last-matches-of-nam) - [link_2](https://www.baeldung.com/linux/find-exclude-paths)
  3. Add line number at standard output:  ->
```sed '=' file | sed 'N; s/\n/ /'```
  4. Metacharacter:
     > ^   $   .  |     ?    *   +     (   )   [   ]  {   }   \
  5. Gen ASCII text
     [link](http://patorjk.com/software/taag/#p=display&f=Graffiti&t=Type%20Something%20)
     Mode: Alphabet - Banner - Efti font - Letters - Doh - ANSI Regular
  6. tcsh shell
     [option meaning](https://www.onworks.net/programs/tcsh-online)
  7. CUSTOM PROMPT
     - [link_1](https://stackoverflow.com/questions/33030442/how-can-i-change-my-tcsh-prompt-to-show-my-current-working-directory)
     - [link_2](https://www.funtoo.org/Prompt_Magic)
     - [link_3](http://www.understudy.net/custom.html)

 # TCL
 [Command lookup](https://www.tcl-lang.org/man/tcl8.6/TclCmd/contents.htm)
 Run in shell
```
#!/bin/sh                                                                                                                                                                                                          
 
#\
exec tclsh "$0" ${1+"$@"}
```
     
