@ECHO OFF
CALL config.cmd

ECHO Streipping Irssi EXEs and DLLs with StripReloc...
REM NOTE: cthelper.exe must stay uncompressed!
FOR /r %SRC_DIR%\bin %%e IN (irssi.exe,puttycyg.exe,*.dll) DO StripReloc.exe /B /C "%%e"
FOR /r %SRC_DIR%\lib %%e IN (*.exe,*.dll) DO StripReloc.exe /B /C /F "%%e"

ECHO Done.
ECHO.
PAUSE
