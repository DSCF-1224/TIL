! gcc version 8.1.0 (i686-posix-dwarf-rev0, Built by MinGW-W64 project)

program test_transfer

  ! <module>s to import
  use, intrinsic :: iso_fortran_env

  ! require all variables to be explicitly declared
  implicit none

  ! returned = 1.7976931348623157E+308
  print *, transfer(source = Z'7FEFFFFFFFFFFFFF', mold = 0.0_REAL64)
  print *, huge(x = 0.0_REAL64)

  ! returned = 2.2250738585072014E-308
  print *, transfer(source = Z'0010000000000000', mold = 0.0_REAL64)
  print *, tiny(x = 0.0_REAL64)

  print *, transfer(source = Z'7FF0000000000000', mold = 0.0_REAL64) ! positive infinity
  print *, transfer(source = Z'FFF0000000000000', mold = 0.0_REAL64) ! negative infinity

end program test_transfer

! EOF
