@echo off
echo ##########################################################################
echo #  将..\assets\resources下国际化资源打成zip包 build\resources-i18n.zip   #
echo ##########################################################################

set LAST_CD=%cd%
set THIS_FILE_DIR=%~dp0

set work_path="..\assets\resources\data" "..\assets\resources\en" "..\assets\resources\message-bundle.json" "..\assets\resources\zh-Hant" "..\assets\resources\ja" "..\assets\resources\ko" "..\assets\resources\ru" "..\assets\resources\de"
set exclude_opts="-xr!chapters.json"
set zipfile="build\resources-i18n.zip"

cd /D %THIS_FILE_DIR%

if EXIST "%zipfile%" (
    del /Q "%zipfile%"
    ping -n 2 127.0.0.1 > nul
)
"c:\Program Files\7-Zip\7z.exe" a -xr!thumbs.db -xr!.DS_Store -xr!*.meta %exclude_opts% "%zipfile%" %work_path%

:EXIT

cd /D %LAST_CD%
pause