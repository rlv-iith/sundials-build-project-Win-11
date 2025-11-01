# SUNDIALS Build on Windows 11

This repository provides self-contained, reproducible build environments for the SUNDIALS library with two different linear solvers: SuperLU (open-source) and PARDISO (Intel MKL).

## Status
- [x] **SuperLU Build:** Successful.
- [x] **PARDISO Build:** Successful.
- [x] **Verification:** All examples run correctly on both configurations.
- [x] All technical requirements have been met.

---
## How to Use

### 1. One-Time Setup
- **Compiler:** Follow the instructions in **`SETUP-GUIDE.md`** to download the MinGW-w64 compiler.
- **Intel MKL:** To run the PARDISO build, you must first install the Intel oneAPI Math Kernel Library.

### 2. Activate the Environment
Open a command prompt and run the activation script: `env.bat`

### 3. Run a Build
- **To build with SuperLU:** `build-superlu.bat`
- **To build with PARDISO:** `build-pardiso.bat`

The test executable for either build will be located at:
`.\sundials\build\bin\cvRoberts_dns.exe`