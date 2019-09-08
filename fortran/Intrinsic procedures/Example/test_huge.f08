! gcc version 8.1.0 (i686-posix-dwarf-rev0, Built by MinGW-W64 project)

program test_huge

  ! <module>s to import
  use, intrinsic :: iso_fortran_env

  ! require all variables to be explicitly declared
  implicit none

  ! STEP.01
  ! about `INTEGER`
  print *, huge(x = 1_INT8)  ! return :  127
  print *, huge(x = 1_INT16) ! return :  32767
  print *, huge(x = 1_INT32) ! return :  2147483647
  print *, huge(x = 1_INT64) ! return :  9223372036854775807

  ! STEP.02
  ! about `REAL`
  print *, huge(x = 1.0_REAL32)  ! return :   3.40282347E+38
  print *, huge(x = 1.0_REAL64)  ! return :   1.7976931348623157E+308
  print *, huge(x = 1.0_REAL128) ! return :   1.18973149535723176508575932662800702E+4932

  print *, huge(x = 1.0e+000_REAL32)  ! return :   3.40282347E+38
  print *, huge(x = 1.0e+000_REAL64)  ! return :   1.7976931348623157E+308
  print *, huge(x = 1.0e+000_REAL128) ! return :   1.18973149535723176508575932662800702E+4932

  print *, huge(x = 1.0e+000) ! return :   3.40282347E+38
  print *, huge(x = 1.0d+000) ! return :   1.7976931348623157E+308
  print *, huge(x = 1.0q+000) ! return :   1.18973149535723176508575932662800702E+4932

  ! Warning: Extension: exponent-letter 'q' in real-literal-constant at (1) [-Wreal-q-constant]

end program test_huge

! EOF
