@ECHO OFF

SET path_folder_github= ???

gfortran ^
-c ^
-Wall -pedantic -fbounds-check -O -Wuninitialized -ffpe-trap=invalid,zero,overflow -fbacktrace ^
%path_folder_github%"\TIL\fortran\Intrinsic procedures\Example\test_digits_f08.f08"

gfortran ^
-o test_digits_f08.exe ^
-Wall -pedantic -fbounds-check -O -Wuninitialized -ffpe-trap=invalid,zero,overflow -fbacktrace ^
D:\gfortran\digits.o

ECHO "Finished"
ECHO ON

@EXIT /B