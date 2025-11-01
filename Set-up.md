# Manual Setup Guide: MinGW-w64 Compiler

This project requires a C compiler. The following steps will guide you through downloading and placing it correctly.

1.  **Go to the WinLibs download page:** [https://winlibs.com/](https://winlibs.com/)

2.  **Download the Compiler:** Find the latest stable version (e.g., GCC 15.2.0). In that section, find the **"Win64 (without LLVM/Clang/LLDB)"** option and click the **"Zip archive"** link to download it.

3.  **Extract the Files:**
    *   After the download is complete, find the `.zip` file.
    *   Extract its contents. This will create a folder named `mingw64`.
    *   **Move this `mingw64` folder** so that it is located directly inside the main project directory (e.g., `sundials-build-windows/`).

The final folder structure should look like this:
sundials-build-windows/
├── mingw64/ <-- The compiler you just moved
├── sundials/ <-- (Will be cloned by build script)
├── superlu/ <-- (Will be cloned by build script)
└── ...
code
Code
Once the `mingw64` folder is in place, you are ready to use the automated scripts.