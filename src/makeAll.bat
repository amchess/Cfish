@echo off
ren C:\MinGW\mingw64-540 mingw64
ren C:\MinGW\mingw32-540 mingw32
copy "C:\MinGW\mingw64\x86_64-w64-mingw32\lib\libwinpthread-1.dll" "C:\Users\andre\Documents\StockfishFamily\Cfish9\Windows\Cfish\src\libwinpthread-1.dll"
cd "C:\Users\andre\Documents\StockfishFamily\Cfish9\Windows\Cfish\src"

make clean
mingw32-make -f MakeFile build ARCH=x86-64 COMP=mingw
strip cfish.exe
ren cfish.exe CFish9-x86-64.exe

make clean
mingw32-make -f MakeFile build ARCH=x86-64-modern COMP=mingw
strip cfish.exe
ren cfish.exe CFish9-x86-64-modern.exe

make clean
mingw32-make -f MakeFile build ARCH=x86-64-bmi2 COMP=mingw
strip cfish.exe
ren cfish.exe CFish9-x86-64-bmi2.exe

make clean
mingw32-make -f MakeFile build ARCH=x86-32 COMP=mingw
strip cfish.exe
ren cfish.exe CFish9-x86-32.exe

make clean
mingw32-make -f MakeFile build ARCH=x86-32-old COMP=mingw
strip cfish.exe
ren cfish.exe CFish9-x86-32-old.exe

make clean
mingw32-make -f MakeFile build ARCH=ppc-64 COMP=mingw
strip cfish.exe
ren cfish.exe CFish9-ppc-64.exe

make clean
mingw32-make -f MakeFile build ARCH=ppc-32 COMP=mingw
strip cfish.exe
ren cfish.exe CFish9-ppc-32.exe

make clean
mingw32-make -f MakeFile build ARCH=armv7 COMP=mingw
strip cfish.exe
ren cfish.exe CFish9-armv7.exe

make clean
mingw32-make -f MakeFile build ARCH=general-64 COMP=mingw
strip cfish.exe
ren cfish.exe CFish9-general-64.exe

make clean
mingw32-make -f MakeFile build ARCH=general-32 COMP=mingw
strip cfish.exe
ren cfish.exe CFish9-general-32.exe

ren C:\MinGW\mingw64 mingw64-540 
ren C:\MinGW\mingw32 mingw32-540
del libwinpthread-1.dll

make clean
pause

