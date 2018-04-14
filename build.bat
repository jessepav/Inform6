@echo off

setlocal EnableExtensions EnableDelayedExpansion

if "%1" == "" (
	set TARGET=inform6.exe
) else (
	set TARGET=%1
)	

mingw32-make -j 4 -f Makefile-compiler-mingw32 %TARGET%

endlocal

