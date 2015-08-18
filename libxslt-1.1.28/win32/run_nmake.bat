@echo off
REM if these variables are set it confuses nmake
SET MAKE=
SET MAKEFLAGS=
nmake %*
if %errorlevel% neq 0 exit /b %errorlevel%
