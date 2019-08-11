# Fortran の組み込み手続き : `ichar` #

## Sample ##

```Fortran
! gcc version 8.1.0 (i686-posix-dwarf-rev0, Built by MinGW-W64 project)

program test_ichar

  ! <module>s to import
  use, intrinsic :: iso_fortran_env

  ! require all variables to be explicitly declared
  implicit none

  ! STEP.01
  print *, ichar(c="a", kind=INT8), kind(x = ichar(c="a", kind=INT8) ) ! return : ␣␣␣97␣␣␣␣␣␣␣␣␣␣␣1
  print *, ichar(c="b", kind=INT8), kind(x = ichar(c="b", kind=INT8) ) ! return : ␣␣␣98␣␣␣␣␣␣␣␣␣␣␣1
  print *, ichar(c="c", kind=INT8), kind(x = ichar(c="c", kind=INT8) ) ! return : ␣␣␣99␣␣␣␣␣␣␣␣␣␣␣1
  print *, ichar(c="d", kind=INT8), kind(x = ichar(c="d", kind=INT8) ) ! return : ␣␣100␣␣␣␣␣␣␣␣␣␣␣1
  print *, ichar(c="e", kind=INT8), kind(x = ichar(c="e", kind=INT8) ) ! return : ␣␣101␣␣␣␣␣␣␣␣␣␣␣1
  print *, ichar(c="f", kind=INT8), kind(x = ichar(c="f", kind=INT8) ) ! return : ␣␣102␣␣␣␣␣␣␣␣␣␣␣1
  print *, ichar(c="g", kind=INT8), kind(x = ichar(c="g", kind=INT8) ) ! return : ␣␣103␣␣␣␣␣␣␣␣␣␣␣1
  print *, ichar(c="h", kind=INT8), kind(x = ichar(c="h", kind=INT8) ) ! return : ␣␣104␣␣␣␣␣␣␣␣␣␣␣1
  print *, ichar(c="i", kind=INT8), kind(x = ichar(c="i", kind=INT8) ) ! return : ␣␣105␣␣␣␣␣␣␣␣␣␣␣1
  print *, ichar(c="j", kind=INT8), kind(x = ichar(c="j", kind=INT8) ) ! return : ␣␣106␣␣␣␣␣␣␣␣␣␣␣1
  print *, ichar(c="k", kind=INT8), kind(x = ichar(c="k", kind=INT8) ) ! return : ␣␣107␣␣␣␣␣␣␣␣␣␣␣1
  print *, ichar(c="l", kind=INT8), kind(x = ichar(c="l", kind=INT8) ) ! return : ␣␣108␣␣␣␣␣␣␣␣␣␣␣1
  print *, ichar(c="m", kind=INT8), kind(x = ichar(c="m", kind=INT8) ) ! return : ␣␣109␣␣␣␣␣␣␣␣␣␣␣1
  print *, ichar(c="n", kind=INT8), kind(x = ichar(c="n", kind=INT8) ) ! return : ␣␣110␣␣␣␣␣␣␣␣␣␣␣1
  print *, ichar(c="o", kind=INT8), kind(x = ichar(c="o", kind=INT8) ) ! return : ␣␣111␣␣␣␣␣␣␣␣␣␣␣1
  print *, ichar(c="p", kind=INT8), kind(x = ichar(c="p", kind=INT8) ) ! return : ␣␣112␣␣␣␣␣␣␣␣␣␣␣1
  print *, ichar(c="q", kind=INT8), kind(x = ichar(c="q", kind=INT8) ) ! return : ␣␣113␣␣␣␣␣␣␣␣␣␣␣1
  print *, ichar(c="r", kind=INT8), kind(x = ichar(c="r", kind=INT8) ) ! return : ␣␣114␣␣␣␣␣␣␣␣␣␣␣1
  print *, ichar(c="s", kind=INT8), kind(x = ichar(c="s", kind=INT8) ) ! return : ␣␣115␣␣␣␣␣␣␣␣␣␣␣1
  print *, ichar(c="t", kind=INT8), kind(x = ichar(c="t", kind=INT8) ) ! return : ␣␣116␣␣␣␣␣␣␣␣␣␣␣1
  print *, ichar(c="u", kind=INT8), kind(x = ichar(c="u", kind=INT8) ) ! return : ␣␣117␣␣␣␣␣␣␣␣␣␣␣1
  print *, ichar(c="v", kind=INT8), kind(x = ichar(c="v", kind=INT8) ) ! return : ␣␣118␣␣␣␣␣␣␣␣␣␣␣1
  print *, ichar(c="w", kind=INT8), kind(x = ichar(c="w", kind=INT8) ) ! return : ␣␣119␣␣␣␣␣␣␣␣␣␣␣1
  print *, ichar(c="x", kind=INT8), kind(x = ichar(c="x", kind=INT8) ) ! return : ␣␣120␣␣␣␣␣␣␣␣␣␣␣1
  print *, ichar(c="y", kind=INT8), kind(x = ichar(c="y", kind=INT8) ) ! return : ␣␣121␣␣␣␣␣␣␣␣␣␣␣1
  print *, ichar(c="z", kind=INT8), kind(x = ichar(c="z", kind=INT8) ) ! return : ␣␣122␣␣␣␣␣␣␣␣␣␣␣1

end program test_ichar
```

## 参考文献 ##

* [Fortran Wiki](http://fortranwiki.org/fortran/show/HomePage)
  * [Intrinsic procedures](http://fortranwiki.org/fortran/show/Intrinsic+procedures)
    * [ichar](http://fortranwiki.org/fortran/show/ichar)
* [GNU Fortran](https://gcc.gnu.org/onlinedocs/gfortran/index.html#Top)
  * \[9\] [Intrinsic Procedures](https://gcc.gnu.org/onlinedocs/gfortran/Intrinsic-Procedures.html#Intrinsic-Procedures)
    * \[143\] [ICHAR](https://gcc.gnu.org/onlinedocs/gfortran/ICHAR.html#ICHAR)

<!-- EOF -->
