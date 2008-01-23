@ECHO OFF
SET APP_VER_FILE=0_8_12
SET APP_PKG_RELEASE=1
SET INPUT=irssi-win32-0.8.12

SET OUTPUT=irssi_%APP_VER_FILE%_usb_%APP_PKG_RELEASE%.zip
CD %INPUT%
7z a ..\%OUTPUT% -tzip -mx=9 -xr!.svn ..\shared\* bin\* lib\* share\* terminfo\* startup
7z u ..\%OUTPUT% -tzip -mx=9 -xr!.svn ..\usb\*

ECHO Done.
ECHO.
PAUSE
