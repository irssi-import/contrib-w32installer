@ECHO OFF
CALL bin\get_irssi_home.cmd
START bin\puttycyg.exe -cygterm "bin/irssi.exe \"--home=%IRSSI_HOME%\""
