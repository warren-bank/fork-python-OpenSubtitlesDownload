@echo off

set files=%*

REM Set the correct path to your python executable here
set PYTHON_HOME=C:\PortableApps\WinPythonZero\3.7.1.0\python-3.7.1.amd64
set PATH=%PYTHON_HOME%;%PATH%

REM Set the correct path to your OpenSubtitlesDownload.py executable here (default: in directory parent to .bat)
set PYTHON_SCRIPT=%~dp0..\OpenSubtitlesDownload.py

REM Set the correct login credentials for your personal OpenSubtitles.org account
set username=
set password=

REM Set the correct language to download (default: "eng")
set language=

REM ----------------------------------------------------------------------------
REM Do not edit beyond this line

set options=
if defined username set options=%options% -u "%username%"
if defined password set options=%options% -p "%password%"
if defined language set options=%options% -l "%language%" --suffix
set options=%options% --cli --auto --utf8

call python "%PYTHON_SCRIPT%" %options% %files%

echo.
echo OpenSubtitlesDownload operation is complete.
pause >NUL
