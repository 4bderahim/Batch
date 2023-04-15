echo off
title CLEAR TEMPORARY FILES
color b
mode 90, 20

cls
echo.                               [REMOVE TEMPORARY FILES]
echo.
echo.

del /q "C:\Users\%USERNAME%\AppData\Local\Temp\*" > NUL 2> NUL

start powershell for /d %%y in ("C:\Users\ABDERRAHIM\AppData\Local\Temp\*") do @rd /s /q "%%y"
del /q "C:\Windows\Prefetch\*" > NUL 2> NUL

for /d %%i in (C:\Windows\Prefetch\*) do @rd /s /q "%%i" > NUL 2> NUL
del /q "C:\Windows\Temp\*" > NUL 2> NUL
for /d %%x in (C:\Windows\Temp\*) do @rd /s /q "%%x" > NUL 2> NUL
echo [+] All temporary files deleted.
echo.
pause

