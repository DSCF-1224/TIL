# Fortran の組み込み手続き : `bit_size` #

## Fortran 2008 ##

|kind type parameters|桁数|
|:-------:|-:|
|`INT8`   | 8|
|`INT16`  |16|
|`INT32`  |32|
|`INT64`  |64|

```Fortran
! [Used Compiler]
! GNU Fortran (x86_64-posix-seh-rev0, Built by MinGW-W64 project) 8.1.0
program main

  ! <module>s to import
  use, intrinsic :: iso_fortran_env

  ! require all variables to be explicitly declared
  implicit none

  integer(kind=INT8 ) :: val_INT8
  integer(kind=INT16) :: val_INT16
  integer(kind=INT32) :: val_INT32
  integer(kind=INT64) :: val_INT64

  character(len=10, kind=1), parameter :: char_format = '(A5,1X,I2)'

  print char_format, 'INT8 ', bit_size(val_INT8 ) ! =>  8
  print char_format, 'INT16', bit_size(val_INT16) ! => 16
  print char_format, 'INT32', bit_size(val_INT32) ! => 32
  print char_format, 'INT64', bit_size(val_INT64) ! => 64

end program main
```

## 参考文献 ##

* [Fortran Wiki](http://fortranwiki.org/fortran/show/HomePage)
  * [Intrinsic procedures](http://fortranwiki.org/fortran/show/Intrinsic+procedures)
    * [bit_size](http://fortranwiki.org/fortran/show/bit_size)
* [GNU Fortran](https://gcc.gnu.org/onlinedocs/gfortran/index.html#Top)
  * \[9\] [Intrinsic Procedures](https://gcc.gnu.org/onlinedocs/gfortran/Intrinsic-Procedures.html#Intrinsic-Procedures)
    * \[48\] [BIT_SIZE](https://gcc.gnu.org/onlinedocs/gfortran/BIT_005fSIZE.html#BIT_005fSIZE)
