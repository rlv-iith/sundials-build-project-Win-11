@echo off
REM This script builds SUNDIALS with the high-performance PARDISO solver from Intel MKL.

ECHO --- Activating Build Environment ---
CALL env.bat

ECHO --- Building SUNDIALS with PARDISO support ---
ECHO --- Cleaning previous build...
cd sundials
rmdir /s /q build
mkdir build
cd build

ECHO --- Configuring CMake for PARDISO ---
cmake -G "MinGW Makefiles" ^
-D CMAKE_INSTALL_PREFIX=..\..\install ^
-D EXAMPLES_INSTALL_PATH=..\..\install\examples ^
-D SUNDIALS_LINEAR_SOLVERS_ENABLE_PARDISO=ON ^
-D MKL_INCLUDE_DIR="C:/Program Files (x886)/Intel/oneAPI/mkl/2025.3/include" ^
-D MKL_LIBRARY_DIR="C:/Program Files (x86)/Intel/oneAPI/mkl/2025.3/lib" ^
-D MKL_LIBRARIES="mkl_intel_lp64.lib;mkl_sequential.lib;mkl_core.lib" ^
..

ECHO --- Compiling SUNDIALS ---
mingw32-make -j8

cd ..\..

ECHO --- Build Complete! ---
ECHO Verification: The PARDISO-enabled executable can be found at:
ECHO .\sundials\build\bin\cvRoberts_dns.exe