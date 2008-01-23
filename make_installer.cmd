@ECHO OFF

ECHO Compressing Irssi EXEs and DLLs with UPX...
FOR /r %%e IN (*.exe,*.dll) DO upx "%%e" --best --compress-icons=0 --nrv2e --crp-ms=999999

ECHO Compiling installer...
makensis irssi.nsi

ECHO Done.
ECHO.
PAUSE
