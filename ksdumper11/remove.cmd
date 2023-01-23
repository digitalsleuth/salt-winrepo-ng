:: Script to uninstall KsDumper 11

:: Remove directories
If Exist "%ProgramFiles%\KsDumper11" rd /S /Q "%ProgramFiles%\KsDumper11"
If Exist "%ProgramData%\KsDumper11" rd /S /Q "%ProgramData%\KsDumper11"

:: Remove registry entries
reg delete HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\KsDumper11 /f
