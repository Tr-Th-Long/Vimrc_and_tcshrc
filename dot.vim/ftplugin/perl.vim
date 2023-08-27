" ABBREVIATION
iab <buffer> h@     #!/usr/bin/perl -w<CR><BS>
                    \use strict  ;<CR>

iab <buffer> lib@   # EXTENSION FOR COPY and MOVE DIRECTORY<CR>
                    \<BS><BS>use lib "/home/u/longthanhtran/Script/PerlLib/File-Copy-Recursive-0.45/lib/"  ;<CR>
                    \# EXCEL<CR>
                    \<BS><BS>use lib "/home/u/longthanhtran/Script/PerlLib/Excel-Writer-XLSX-1.11/lib/"    ;<CR>
                    \use lib "/home/u/longthanhtran/Script/PerlLib/Archive-Zip-1.68/lib/"          ;<CR>
                    \# MORE LIST METHODS<CR>
                    \<BS><BS>use lib "/home/u/longthanhtran/Script/PerlLib/List-MoreUtils-0.430/lib/"      ;<CR>
                    \use lib "/home/u/longthanhtran/Script/PerlLib/Exporter-Tiny-1.006002/lib/"    ;<CR>
                    \<CR>
                    \use File::Copy::Recursive  qw(fcopy rcopy dircopy fmove rmove dirmove)        ;<CR>
                    \use Cwd qw(abs_path cwd)                                                      ;<CR>
                    \use File::Path                                                                ;<CR>
                    \use File::Basename                                                            ;<CR>
                    \use Excel::Writer::XLSX                                                       ;<CR>
                    \use List::MoreUtils qw(uniq singleton duplicates)                             ;<CR>
                    \<CR>

iab <buffer> fork@  # PARALLEL FORK MANAGER<CR>
                    \<BS><BS>use lib "/home/u/longthanhtran/Script/PerlLib/Parallel-ForkManager-2.02/lib/" ;<CR>
                    \use lib "/home/u/longthanhtran/Script/PerlLib/Moo-2.005005/lib/"              ;<CR>
                    \use lib "/home/u/longthanhtran/Script/PerlLib/Role-Tiny-2.002004/lib/"        ;<CR>
                    \use lib "/home/u/longthanhtran/Script/PerlLib/Sub-Quote-2.006008/lib/"        ;<CR>
                    \use Parallel::ForkManager                                                     ;<CR>
                    \# prevent conflict in fork and threads<CR>
                    \<BS><BS>use Fcntl qw(:flock SEEK_END)                                                 ;<CR>
                    \<CR>
                    \sub f_lock {<CR>
                    \<Tab>my ($fh) = @_;<CR>
                    \flock($fh, LOCK_EX) or die $!;<CR>
                    \seek ($fh, 0, SEEK_END) or die $!;<CR>
                    \<BS><BS>}<CR>
                    \<CR>
                    \sub f_unlock {<CR>
                    \<Tab>my ($fh) = @_;<CR>
                    \flock($fh, LOCK_UN) or die $!;<CR>
                    \<BS><BS>}<CR>

iab <buffer>thread@ use threads ;<CR>
                    \# THREAD QUEUE<CR>
                    \<BS><BS>use lib "/home/u/longthanhtran/Script/PerlLib/Thread-Queue-3.13/lib/"         ;<CR>
                    \use Thread::Queue                                                             ;<CR>
                    \# prevent conflict in fork and threads<CR>
                    \<BS><BS>use Fcntl qw(:flock SEEK_END)                                                 ;<CR>
                    \<CR>
                    \sub f_lock {<CR>
                    \<Tab>my ($fh) = @_;<CR>
                    \flock($fh, LOCK_EX) or die $!;<CR>
                    \seek ($fh, 0, SEEK_END) or die $!;<CR>
                    \<BS><BS>}<CR>
                    \<CR>
                    \sub f_unlock {<CR>
                    \<Tab>my ($fh) = @_;<CR>
                    \flock($fh, LOCK_UN) or die $!;<CR>
                    \<BS><BS>}<CR>
                    


iab <buffer> if@    if () {<CR>
                    \<Tab><CR>
                    \}<ESC><<$a<CR>
                    \elsif ( ) {<CR>
                    \<Tab><CR>
                    \}
                    \<ESC><<5kf)i

iab <buffer> sw@    SWITCH:{<CR>
                    \<Tab>() && do {ACTION; last SWITCH;};<CR>
                    \}
                    \<ESC><<1kf)i

iab <buffer> wh@    while () {<CR>
                    \<Tab><CR>
                    \}
                    \<ESC><<2kf)i

iab <buffer> dowh@  do {<CR>
                    \<Tab><CR>
                    \} while ( );
                    \<ESC><<1ka

iab <buffer> fe@    foreach my $ () {<CR>
                    \<Tab><CR>
                    \}
                    \<ESC><<2kf$a

iab <buffer> for@   for (my $i = 1; $i < 1; $i++) {<CR>
                    \<Tab><CR>
                    \}
                    \<ESC><<1ka

iab <buffer> rf@    open (my $FH, "<", <PATH>) or die "Cannot open <PATH>: $!\n";<CR>
                    \<Tab><CR>
                    \close $FH;
                    \<ESC><<1ka

iab <buffer> wf@    open (my $FH, ">", <PATH>) or die "Cannot open <PATH>: $!\n";<CR>
                    \<Tab><CR>
                    \close $FH;
                    \<ESC><<1ka

" COMMENT & UNCOMMNET BY VISUAL AND FUNCTION
let localComment = '#'
xnoremap # : norm! 0i<C-r>=localComment<CR><CR>
xnoremap ! : norm! ^1x<CR>

function! CommentOut()
  normal! 0i#
endfunction

function! UncommentOut()
  normal! ^1x
endfunction

nnoremap cm : call CommentOut()<CR>j
nnoremap cx : call UncommentOut()<CR>j