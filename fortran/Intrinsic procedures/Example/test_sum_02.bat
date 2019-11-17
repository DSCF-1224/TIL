@REM STEP.01
@REM 当該バッチファイルの位置するフォルダをカレントディレクトリに指定する
@CD /D %~dp0

@REM STEP.03.01
@REM 補助モジュールのコンパイル

@gfortran -c -std=f2008 -pedantic-errors -Wall ..\..\..\..\Fortran\support\support_system_clock.f08

@REM STEP.03.01
@REM コンパイル -O0

@gfortran -c              -std=f2008 -pedantic-errors -Wall -O0 test_sum_02.f08
@gfortran -o test_sum.exe -std=f2008 -pedantic-errors -Wall -O0 support_system_clock.o test_sum_02.o

@REM STEP.03.02
@REM 実行
@ECHO "-O0"
@test_sum.exe

@REM STEP.04.01
@REM コンパイル -O1

@gfortran -c              -std=f2008 -pedantic-errors -Wall -O1 test_sum_02.f08
@gfortran -o test_sum.exe -std=f2008 -pedantic-errors -Wall -O1 support_system_clock.o test_sum_02.o

@REM STEP.04.02
@REM 実行
@ECHO "-O1"
@test_sum.exe

@REM STEP.05.01
@REM コンパイル -O2

@gfortran -c              -std=f2008 -pedantic-errors -Wall -O2 test_sum_02.f08
@gfortran -o test_sum.exe -std=f2008 -pedantic-errors -Wall -O2 support_system_clock.o test_sum_02.o

@REM STEP.05.02
@REM 実行
@ECHO "-O2"
@test_sum.exe

@REM STEP.06.01
@REM コンパイル -O3

@gfortran -c              -std=f2008 -pedantic-errors -Wall -O3 test_sum_02.f08
@gfortran -o test_sum.exe -std=f2008 -pedantic-errors -Wall -O3 support_system_clock.o test_sum_02.o

@REM STEP.06.02
@REM 実行
@ECHO "-O3"
@test_sum.exe

@REM STEP.END
@ECHO "Finished"
