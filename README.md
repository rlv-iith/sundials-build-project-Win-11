# SUNDIALS Build on Windows 11

This repository provides a self-contained, reproducible build environment for the SUNDIALS library with SuperLU support on Windows 11.

## Status
*   **Build:** Successful.
*   **Verification:** The `cvRoberts_dns.exe` example runs correctly.

---
## How to Use

This project uses a "virtual environment" approach, keeping all tools and libraries within this directory.

### 1. One-Time Setup
Before you begin, you need to manually download the compiler. Please follow the instructions in **`SETUP-GUIDE.md`**.

### 2. Activate the Environment
Open a command prompt in this directory and run the activation script. This will set up your `PATH` for the current session.
env.bat
code
Code
### 3. Build the Libraries
Once the environment is active, run the main build script. This will clone the source code, compile SuperLU, and then compile SUNDIALS.
build.bat
code
Code
### 4. Verification
After the build is complete, the final test executable will be located at:
`.\sundials\build\bin\cvRoberts_dns.exe`