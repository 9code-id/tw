@echo off
setlocal enabledelayedexpansion

set "file=pubspec.yaml"

if not exist "%file%" (
    echo File not found: %file%
    exit /b 1
)

set "new_version="

for /f "tokens=2 delims= " %%i in ('findstr "^version:" "%file%"') do (
    set "version=%%i"
)

for /f "tokens=1,2,3 delims=." %%a in ("%version%") do (
    set /a patch=%%c+1
    set "new_version=%%a.%%b.!patch!"
)

(for /f "tokens=1* delims=:" %%i in ('findstr /n "^" "%file%"') do (
    set "line=%%j"
    if "%%j"=="version: %version%" (
        echo version: %new_version%
    ) else (
        echo !line!
    )
)) > "%file%.tmp"

move /y "%file%.tmp" "%file%"

echo Version updated to %new_version% in %file%

dart pub publish