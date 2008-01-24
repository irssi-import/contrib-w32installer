@ECHO OFF
CALL bin\run_with_home.cmd
START bin\puttycyg.exe -cygterm "bin/irssi.exe \"--home=%IRSSI_HOME%\""
