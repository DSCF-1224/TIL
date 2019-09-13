@ECHO OFF

SET path_folder_github=???\GitHub

gfortran ^
-c ^
-Wall -pedantic -fbounds-check -O -Wuninitialized -ffpe-trap=invalid,zero,overflow -fbacktrace ^
%path_folder_github%"\TIL\fortran\Intrinsic procedures\Example\test_atan2.f08"

gfortran ^
-o test_atan2.exe ^
-Wall -pedantic -fbounds-check -O -Wuninitialized -ffpe-trap=invalid,zero,overflow -fbacktrace ^
test_atan2.o

ECHO Finished
ECHO ON

@EXIT /B