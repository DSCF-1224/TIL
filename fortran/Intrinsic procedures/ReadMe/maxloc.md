# Fortran の組み込み手続き : `maxloc` #

```Fortran
! [Used Compiler]
! GNU Fortran (x86_64-posix-seh-rev0, Built by MinGW-W64 project) 8.1.0

program main

  use, intrinsic :: iso_fortran_env
  
  ! constants for this <program>
  integer(INT32), parameter :: len_sequence = 10_INT32
  
  ! arrays for this <program>
  integer(INT32), dimension(1_INT32:len_sequence) :: val_sequence
  
  ! support variables for this <program>
  integer(INT32) :: itr
  
  ! STEP.01
  ! initialize the array to apply the `maxloc`
  do itr = 1_INT32, len_sequence, 1_INT32
      val_sequence(itr) = itr
  end do

  ! STEP.02
  ! test `maxloc`
  call test_maxloc ( 1_INT32) ! returns :  1
  call test_maxloc ( 2_INT32) ! returns :  2
  call test_maxloc ( 3_INT32) ! returns :  3
  call test_maxloc ( 4_INT32) ! returns :  4
  call test_maxloc ( 5_INT32) ! returns :  5
  call test_maxloc ( 6_INT32) ! returns :  6
  call test_maxloc ( 7_INT32) ! returns :  7
  call test_maxloc ( 8_INT32) ! returns :  8
  call test_maxloc ( 9_INT32) ! returns :  9
  call test_maxloc (10_INT32) ! returns : 10

  ! contained <subroutine>s and <function>s are below
  contains

  subroutine test_maxloc (index_end)

    ! arguments for this <function>
    integer(INT32), intent(in) :: index_end

    write(unit=OUTPUT_UNIT, fmt='(I2)', advance='yes') maxloc( val_sequence(:index_end), dim=1 )
    return

  end subroutine test_maxloc
  
end program main
```

## 参考文献 ##

* [Fortran Wiki](http://fortranwiki.org/fortran/show/HomePage)
  * [Intrinsic procedures](http://fortranwiki.org/fortran/show/Intrinsic+procedures)
    * [maxloc](http://fortranwiki.org/fortran/show/maxloc)
* [GNU Fortran](https://gcc.gnu.org/onlinedocs/gfortran/index.html#Top)
  * \[9\] [Intrinsic Procedures](https://gcc.gnu.org/onlinedocs/gfortran/Intrinsic-Procedures.html#Intrinsic-Procedures)
    * \[191\] [MAXLOC](https://gcc.gnu.org/onlinedocs/gfortran/MAXLOC.html#MAXLOC)
