# Fortran の組み込み手続き : `btest` #

## Fortran 2008 ##

### 各ビットのの値の取得 ###

```Fortran
! [Used Compiler]
! GNU Fortran (x86_64-posix-seh-rev0, Built by MinGW-W64 project) 8.1.0

! [Warning]
!    do itr_num = -huge(itr_num)-1_INT8, huge(itr_num), 1_INT8
!                                                     1
! Warning: DO loop at (1) is undefined as it overflows [-Wundefined-do-loop]

program main

  ! <module>s to import
  use, intrinsic :: iso_fortran_env

  ! require all variables to be explicitly declared
  implicit none

  integer(kind=INT8) :: itr_num

  do itr_num = -huge(itr_num)-1_INT8, huge(itr_num), 1_INT8
    write(unit=*, fmt=*) itr_num, print_bits(itr_num)
    if (itr_num .eq. huge(itr_num)) exit
  end do

  ! contained <subroutine>s and <function>s are below
  contains

  ! [reference]
  ! http://www.nag-j.co.jp/fortran/FI_10.html#GenericVsSpecificNames
  function print_bits(num) result(buf_bits)

    ! arguments for this <function>
    integer (kind=INT8), intent(in) :: num

    ! variables for this <function>
    character(len=bit_size(num), kind=1) :: buf_bits

    ! support variables for this <function>
    integer(kind=INT8) :: itr

    ! STEP.01
    ! initialize the buffer of the characters of bits
    buf_bits(1:bit_size(num)) = ''

    do itr = 1, bit_size(num), 1
      if (btest(num, itr-1)) then
        buf_bits(itr:itr) = 'T'
      else
        buf_bits(itr:itr) = 'F'
      end if
    end do

    ! STEP.END
    return

  end function print_bits

end program main
```

## 参考文献 ##

* [Fortran Wiki](http://fortranwiki.org/fortran/show/HomePage)
  * [Intrinsic procedures](http://fortranwiki.org/fortran/show/Intrinsic+procedures)
    * [btest](http://fortranwiki.org/fortran/show/btest)
* [GNU Fortran](https://gcc.gnu.org/onlinedocs/gfortran/index.html#Top)
  * \[9\] [Intrinsic Procedures](https://gcc.gnu.org/onlinedocs/gfortran/Intrinsic-Procedures.html#Intrinsic-Procedures)
    * \[51\] [BTEST](https://gcc.gnu.org/onlinedocs/gfortran/BTEST.html#BTEST)
* [日本ニューメリカルアルゴリズムズグループ株式会社（日本 NAG）](http://www.nag-j.co.jp/index.htm)
  * [Fortran 入門](http://www.nag-j.co.jp/fortran/index.html)
      * [組込み手続](http://www.nag-j.co.jp/fortran/FI_10.html#_10)
