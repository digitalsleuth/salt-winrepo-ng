:: A Wrapper for the install.ps1 since you can't run a powershell script
:: directly from the software definition file

:: Get Passed Parameters
set "password="

:: First Parameter
if not "%~1"=="" (
    echo.%1 | FIND /I "=" > nul && (
        :: Named Parameter
        echo Named Parameter
        set "%~1"
    ) || (
        :: Positional Parameter
        echo Positional Parameter
        set "password=%~1"
    )
)

:: Get the current directory
Set "CurDir=%cd%"

:: Launch the powershell script
echo "LAUNCHING!"
powershell -ep bypass \".\%CurDir%\install.ps1 -norestart -ignore_space -password %password%\"
