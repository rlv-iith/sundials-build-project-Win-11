@echo off
REM This script documents the process for building SUNDIALS with SuperLU support on Windows.
REM It assumes a self-contained environment created by the accompanying README.

ECHO --- Activating Build Environment ---
CALL env.bat

ECHO --- Building SuperLU ---
cd superlu
mkdir build
cd build
cmake -G "MinGW Makefiles" -D CMAKE_INSTALL_PREFIX=..\..\install ..
mingw32-make -j8
mingw32-make install
cd ..\..

ECHO --- Building SUNDIALS with SuperLU support ---
cd sundials
mkdir build
cd build
cmake -G "MinGW Makefiles" ^
-D CMAKE_INSTALL_PREFIX=..\..\install ^
-D EXAMPLES_INSTALL_PATH=..\..\install\examples ^
-D SUNDIALS_LINEAR_SOLVERS_ENABLE_SUPERLU=ON ^
-D SUPERLU_INCLUDE_DIR=..\..\install\include ^
-D SUPERLU_LIBRARY_DIR=..\..\install\lib ^
..
mingw32-make -j8

cd ..\..

ECHO --- Build Complete! ---
ECHO Verification: The main executable can be found at:
ECHO .\sundials\build\bin\cvRoberts_dns.exe