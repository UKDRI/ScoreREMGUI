@echo off
setlocal enabledelayedexpansion

:: Check if Python is installed
python --version 2>nul
if %errorlevel% neq 0 (
    echo Python is not installed.
    goto prompt_install
)

:: Check Python version
for /f "tokens=2 delims= " %%i in ('python --version 2^>^&1') do set PYVERSION=%%i
echo Detected Python version: %PYVERSION%
if "%PYVERSION%"=="3.11.6" (
    echo Python version 3.11.6 is already installed.
    goto end
)

:prompt_install
echo Python version 3.11.6 is not installed.
set /p install_py="Would you like to download and install Python 3.11.6? (yes/no): "
if /i "%install_py%"=="yes" (
    goto download_install
) else (
    goto end
)

:download_install
echo Downloading Python 3.11.6 installer...
powershell -Command "Invoke-WebRequest -Uri https://www.python.org/ftp/python/3.11.6/python-3.11.6-amd64.exe -OutFile python-3.11.6-amd64.exe"
if %errorlevel% neq 0 (
    echo Failed to download Python installer.
    goto end
)

echo Installing Python 3.11.6...
start /wait python-3.11.6-amd64.exe /quiet InstallAllUsers=1 PrependPath=1
if %errorlevel% neq 0 (
    echo Failed to install Python.
    goto end
)

:: Clean up installer
del python-3.11.6-amd64.exe

:: Add Python to PATH (immediate effect for current session)
setx PATH "%ProgramFiles%\Python311\;%PATH%"
if %errorlevel% neq 0 (
    echo Failed to set PATH.
    goto end
)

:: Check installation
python --version
if %errorlevel% neq 0 (
    echo Installation failed.
) else (
    echo Python 3.11.6 installed successfully.
)

:install_packages 
echo Installing Python packages... 
python -m pip install --upgrade pip 
python -m pip install numpy pandas pytz mne yasa 
if %errorlevel% neq 0 ( 
	echo Failed to install one or more packages. 
) else ( 
	echo Packages installed successfully. 
)

:end
endlocal
pause