# SUNDIALS Build Project

This repository documents the process of building the SUNDIALS library with SuperLU support on Windows, as requested by Professor Venkat Subramanian.

## Status

- [x] SuperLU dependency build successful.
- [x] SUNDIALS build with SuperLU integration successful.
- [x] Verification successful by running the `cvRoberts_dns.exe` example.
- [ ] Next Step: Investigate PARDISO integration.

## How to Use

This project uses a self-contained "virtual environment" to manage all tools and libraries.

**1. Perform the one-time setup.**
   - Before you begin, please follow the instructions in **`SETUP-GUIDE.md`** to download the compiler.

**2. Activate the build environment.**
   - Open a command prompt in this directory and run the activation script: `env.bat`

**3. Run the main build script.**
   - Once the environment is active, run the main build script: `build.bat`

The script will download and build the libraries. A key test executable can then be run via:
`.\sundials\build\bin\cvRoberts_dns.exe`