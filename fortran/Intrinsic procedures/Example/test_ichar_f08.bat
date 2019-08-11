@ECHO OFF

SET path_folder_github=???

gfortran ^
-c ^
-Wall -pedantic -fbounds-check -O -Wuninitialized -ffpe-trap=invalid,zero,overflow -fbacktrace ^
%path_folder_github%"\TIL\fortran\Intrinsic procedures\Example\test_ichar_f08.f08"

gfortran ^
-o test_ichar_f08.exe ^
-Wall -pedantic -fbounds-check -O -Wuninitialized -ffpe-trap=invalid,zero,overflow -fbacktrace ^
D:\Dta-1\MinGW\test_ichar_f08.o

ECHO "Finished"
ECHO ON

@EXIT /B