@REM Change the current directory to the path where this batch file resides
@CD /D %~dp0

@REM  Show the time when the compilation has started
@ECHO [BEGIN]
@ECHO %DATE% %TIME%

@REM Compilation
@g++ -std=c++17 -Wall --pedantic-errors ^
-o test_20200123_01.exe ^
test_20200123_01.cpp

@REM  Show the time when the compilation has finished
@ECHO [END]
@ECHO %DATE% %TIME%

test_20200123_01.exe

@REM EOF
