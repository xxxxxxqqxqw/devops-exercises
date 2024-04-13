@echo off
set "pythonVersion=3.10.0"
set "pythonFile=python-%pythonVersion%-amd64.exe"
set "downloadUrl=https://www.python.org/ftp/python/%pythonVersion%/%pythonFile%"
set "downloadedFilePath=%~dp0%pythonFile%"

echo Python indiriliyor...
curl -o "%downloadedFilePath%" "%downloadUrl%"

echo Python kuruluyor...
"%downloadedFilePath%" /quiet InstallAllUsers=1 PrependPath=1

echo Python kurulumu tamamlandı.
python --version
pause