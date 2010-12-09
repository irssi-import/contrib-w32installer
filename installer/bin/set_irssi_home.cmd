@ECHO OFF
SET PERL5LIB=lib/perl5/5.10
SET PERLLIB=lib/perl5/5.10
SET TERMINFO_DIRS=terminfo
FOR /f "delims=" %%i IN ('bin\cygpath "%APPDATA%\Irssi"') DO SET IRSSI_HOME=%%i/