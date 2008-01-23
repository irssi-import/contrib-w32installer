@ECHO OFF
SET PATH=bin
IF NOT EXIST bin\irssi.exe EXIT
SET PERL5LIB=lib/perl5/5.8
SET PERLLIB=lib/perl5/5.8
SET TERMINFO_DIRS=terminfo
irssi.exe --home=. %1 %2 %3 %4 %5
