@ECHO OFF
CALL bin\get_irssi_home.cmd
bin\irssi.exe "--home=%IRSSI_HOME%"
