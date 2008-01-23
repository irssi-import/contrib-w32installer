@ECHO OFF
SET PERL5LIB=lib/perl5/5.8
SET TERMINFO_DIRS=terminfo
FOR /f "delims=" %%i IN ('cygpath "%APPDATA%\Irssi"') DO SET IRSSI_HOME=%%i/
irssi.exe "--home=%IRSSI_HOME%"
