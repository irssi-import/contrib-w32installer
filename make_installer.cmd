@ECHO OFF
CALL config.cmd

ECHO Compiling installer...
makensis irssi.nsi

ECHO Done.
ECHO.
PAUSE
