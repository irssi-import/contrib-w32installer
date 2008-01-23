@ECHO OFF
CALL config.cmd

ECHO Compressing Irssi EXEs and DLLs with UPX...
REM NOTE: cthelper.exe must stay uncompressed!
FOR /r %SRC_DIR%\bin %%e IN (irssi.exe,puttycyg.exe,*.dll) DO upx "%%e" --best --compress-icons=0 --nrv2e --crp-ms=999999
FOR /r %SRC_DIR%\lib %%e IN (*.exe,*.dll) DO upx "%%e" --best --compress-icons=0 --nrv2e --crp-ms=999999

ECHO Done.
ECHO.
PAUSE
