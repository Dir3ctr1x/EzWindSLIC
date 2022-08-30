@ECHO OFF
cd /d "%~dp0"
for /f "delims=" %%# in ('dir /b Ez*.cmd') do set "script=%%#"
call "%script%" /install /silent /norestart
attrib -R -A -S -H *.*
SHUTDOWN /R /T 5
RMDIR /S /Q "%WINDIR%\Setup\Scripts"
exit
