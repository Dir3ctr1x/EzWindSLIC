@echo off
pushd "%~dp0"
setlocal EnableDelayedExpansion
set "num=0"
for /f "tokens=* delims=" %%a in ('acpidump.exe -s ^| find /i "ACPI: SSDT"') do (
set /a num=!num!+1
)
echo %num%