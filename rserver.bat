@echo off
rem cd /D %~dp0
set DIRPATH=%~dp0

echo #### config node env ####
echo * npm install express -g
echo * npm install supervisor -g
echo.

echo #### start server ####
supervisor %DIRPATH%rserver.js