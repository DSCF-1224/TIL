@ECHO OFF

SET path_folder_github=???

gfortran ^
-c ^
-Wall -pedantic -fbounds-check -O -Wuninitialized -ffpe-trap=invalid,zero,overflow -fbacktrace ^
%path_folder_github%"\TIL\fortran\Intrinsic procedures\Example\test_huge.f08"

gfortran ^
-o test_huge.exe ^
-Wall -pedantic -fbounds-check -O -Wuninitialized -ffpe-trap=invalid,zero,overflow -fbacktrace ^
test_huge.o

ECHO "Finished"
ECHO ON

@EXIT /B