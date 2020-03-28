date
gfortran -c -g -fcheck=all -pedantic-errors -ffree-line-length-none -std=f2008 -Wall -Wextra ./module_date_and_time.f08
gfortran -c -g -fcheck=all -pedantic-errors -ffree-line-length-none -std=f2008 -Wall -Wextra ./test_20200328_01.f08
gfortran -o ./test_20200328_01.exe ./module_date_and_time.o ./test_20200328_01.o