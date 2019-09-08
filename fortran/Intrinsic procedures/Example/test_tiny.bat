@ECHO OFF

SET path_folder_github=???

gfortran ^
-c ^
-Wall -pedantic -fbounds-check -O -Wuninitialized -ffpe-trap=invalid,zero,overflow -fbacktrace ^
%path_folder_github%"\TIL\fortran\Intrinsic procedures\Example\test_tiny.f08"

gfortran ^
-o test_tiny.exe ^
-Wall -pedantic -fbounds-check -O -Wuninitialized -ffpe-trap=invalid,zero,overflow -fbacktrace ^
test_tiny.o

ECHO "Finished"
ECHO ON

@EXIT /B