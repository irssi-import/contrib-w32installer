@ECHO OFF
CALL bin\set_irssi_home.cmd
START bin\putty.exe -cygterm "bin/irssi.exe \"--home=%IRSSI_HOME%\""