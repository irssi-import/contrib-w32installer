@ECHO OFF
CALL config.cmd

ECHO Making USB archive...
SET OUTPUT=irssi_%APP_VER_FILE%_usb_%APP_PKG_RELEASE%.zip
CD %SRC_DIR%
7z a ..\%OUTPUT% -tzip -mx=9 -xr!.svn ..\shared\* bin\* lib\* share\* terminfo\* startup
CD ..

ECHO Done.
ECHO.
PAUSE
