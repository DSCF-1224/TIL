@ECHO OFF

SET path_folder_github=???\GitHub

gfortran ^
-c ^
-Wall -pedantic -fbounds-check -O -Wuninitialized -ffpe-trap=invalid,zero,overflow -fbacktrace ^
%path_folder_github%"\TIL\fortran\Intrinsic procedures\Example\test_transfer.f08"

gfortran ^
-o test_transfer.exe ^
-Wall -pedantic -fbounds-check -O -Wuninitialized -ffpe-trap=invalid,zero,overflow -fbacktrace ^
test_transfer.o

ECHO "Finished"
ECHO ON

@EXIT /B