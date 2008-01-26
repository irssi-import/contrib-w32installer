@ECHO OFF
CALL bin\set_irssi_home.cmd
bin\irssi.exe "--home=%IRSSI_HOME%"
