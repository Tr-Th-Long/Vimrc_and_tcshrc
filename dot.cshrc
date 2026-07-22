#!/bin/csh -f

#-------------------------------------------------- EDA TOOLS -----------------------------------------------------------------

###############################################
####     Setting environment variables     ####
###############################################
source /common/lsftool/RBS/dotfiles/lsf_cshrc
setenv LSF_PROJECT SV

### DVE & VCS & VERDI
alias vpd 'bs -t 23:00 -M 64000 -os "RHEL6 RHEL7" -m sv -source /common/appl/Env/Synopsys/vcs_vP-2019.06-SP1-1 vcs -full64 -R -debug_pp'
alias dve 'bs -t 23:00 -M 64000 -os "RHEL6 RHEL7" -m sv -source /common/appl/Env/Synopsys/vcs_vP-2019.06-SP1-1 dve -full64'
alias verdi 'bs -t 22:30 -os "RHEL6 RHEL7" -M 64000 -source /common/appl/Env/Synopsys/verdi_vU-2023.03 verdi -sv -2001 -ssy -ssv -nologo &'

#-------------------------------------------------- COMMAND -----------------------------------------------------------------
##########################################
####     Customize Common Command     ####
##########################################
alias vi        "/usr/bin/vim"
alias v         "vim -b"
alias kdiff     "/common/appl/kdiff3-32bit/bin/kdiff3"
alias myc       "vi ~/.mycshrc"
alias myv       "vi ~/.vimrc"
alias src       "source ~/.cshrc"
alias l         "clear; ls -hl"
alias ll        "clear; òls -hlrt"
alias vd        "vimdiff"
alias cd        "clear ; chdir \!:1 ;l"
alias ..        "cd ..;"
alias cp        "cp -rf"
alias rm        "rm -rf"
alias ln        "ln -sfn"
alias du        "du -sh"
alias grepc     "grep --color=auto"
alias egrepc    "egrep --color=auto"
alias zgrepc    "zgrep --color=auto"
alias rl        "readlink -f"

alias xt        "xterm &"
alias ter       "/common/appl/terminator/0.14/terminator &"
alias kd        "/common/appl/kdiff3-64bit/kdiff3"

#####################
####     SVN     ####
#####################
alias svn_add_all 'svn stat | awk ' \' '{print $2}' \' '| xargs -iXX svn add    XX ' 
alias svn_rev_all 'svn stat | awk ' \' '{print $2}' \' '| xargs -iXX svn revert XX ' 

###############################
####     Check Licence     ####
###############################
alias bj        "bjobs"
alias bk        "bkill"
alias sj        "bjobs -w"
 
##################################
####     PROMPT CUSTOMIZE     ####
##################################
umask 022
#set  prompt = "%{\033[1;36m%}[%d %Y-%w-%D ♠♣♦♥ %P] --- [TRAN THANH LONG]\n%{\033[1;32m%}[%/]\n%B%{\033[1;33m%}%B\ ~~~> " 
#set  prompt = "%U%{\033[1;35m%}[%d %Y-%w-%D ♠♣♦♥ %P] --- [TRAN THANH LONG]\n%{\033[1;32m%}[%m] <\\> [%/]\n%B%{\033[1;33m%}%u%b\ ▶▶▶ ▶▶▶ " 
#set  prompt = "%U%{\033[1;36m%}[%d %Y-%w-%D ♠♣♦♥ %P] --- [TRAN THANH LONG]\n%{\033[1;32m%}[%m] <\\> [%/]\n%B%{\033[1;33m%}%u%b\ ▶▶▶ ▶▶▶ " 
#set  prompt = "%U%{\033[1;36m%}[%d %Y-%w-%D ♠♣♦♥ %P] --- [TRAN THANH LONG]\n%{\033[1;33m%}[%m] <\\> [%/]\n%B%{\033[1;33m%}%u%b\ ▶▶▶ ▶▶▶ " 
#set  prompt = "%U%{\033[1;37;42m%}[%d %Y-%w-%D ♠♣♦♥ %P] --- %{\033[1;37;41m%}[TRAN THANH LONG]%b\n%B%{\033[1;36;45m%}[%m] <\\> [%/]\n%B%{\033[1;33m%}%b\ ▶▶▶ ▶▶▶ " 

#set  prompt = "%S%{\033[1;35m%}[%d %Y-%w-%D ♠♣♦♥ %P] --- [TRAN THANH LONG]\n%{\033[1;34m%}[%m] <\\> [%/]\n%B%{\033[1;33m%}%s%b\ ▶▶▶ ▶▶▶ " 
#set  prompt = "%S%{\033[1;36m%}[%d %Y-%w-%D ♠♣♦♥ %P] --- [TRAN THANH LONG]\n%{\033[1;32m%}[%m] <\\> [%/]\n%B%{\033[1;33m%}%s%b\ ▶▶▶ ▶▶▶ "                                                                        
#set  prompt = "%S%{\033[1;36m%}[%d %Y-%w-%D ♠♣♦♥ %P] --- [TRAN THANH LONG]\n%{\033[1;33m%}[%m] <\\> [%/]\n%B%{\033[1;33m%}%s%b\ ▶▶▶ ▶▶▶ "

set  prompt = "%S%{\033[1;34m%}[%d %Y-%w-%D --- %P] %{\033[1;35m%}[@_@ TvT @w@]%s\n%S%{\033[1;36m%}[%m] <\\> [%/]%s\n%{\033[1;38m%}\| ~~~>   "

   
# ⧗    ⧓  ⧪  ⧭      ▶       ☯        ♠     ♣   ♦   ♥     ♩    ♪     ♫   ♬ (♥ω♥) ⧂ ⧃   ω
# ✪ ❥   ❤   ☻  → ← ⟵  ⟶  ⬅  ⟷   ↺ ↻ ――――――――― (¬_¬) (^∇^) (^∆^) (^⋃^) (◣_◢) (⊙_⊙) (^∩^) 
#♥♥♥♥♥♥♥♥♥ ♦♦♦♦♦♦♦♦♦♦ ♣♣♣♣♣♣♣♣♣♣ ♠♠♠♠♠♠♠♠♠♠ THANK YOU  ♠♠♠♠♠♠♠♠♠♠ ♣♣♣♣♣♣♣♣♣♣ ♦♦♦♦♦♦♦♦♦♦ ♥♥♥♥♥♥♥♥♥  

#----------------------   
set       autolist
set       complete   = enhance
set       implicitcd = verbose
#----------SVN----------

setenv SVN_EDITOR vi
#----------------------
