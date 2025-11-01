@echo off
REM This script sets up a self-contained build environment for this project.

ECHO Activating SUNDIALS Build Environment...

REM Get the absolute path to this project directory
SET "PROJ_DIR=%~dp0"

REM Add our local MinGW compiler to the PATH
SET "PATH=%PROJ_DIR%mingw64\bin;%PATH%"

REM Add the final installed libraries and binaries to the PATH
SET "PATH=%PROJ_DIR%install\bin;%PROJ_DIR%install\lib;%PATH%"

ECHO.
ECHO Environment is ready.
ECHO Compiler:
gcc --version
ECHO.