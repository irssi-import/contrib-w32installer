@ECHO OFF
SET PERL5LIB=lib/perl5/5.10
SET PERLLIB=lib/perl5/5.10
SET TERMINFO_DIRS=terminfo
bin\putty.exe -cygterm "bin/irssi.exe --home=. %1 %2 %3 %4 %5"