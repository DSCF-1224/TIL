! gcc version 8.1.0 (i686-posix-dwarf-rev0, Built by MinGW-W64 project)

program test_tiny

  ! <module>s to import
  use, intrinsic :: iso_fortran_env

  ! require all variables to be explicitly declared
  implicit none

  ! STEP.01
  ! about `REAL`
  print *, tiny(x = 1.0_REAL32)  ! return :  1.17549435E-38
  print *, tiny(x = 1.0_REAL64)  ! return :  2.2250738585072014E-308
  print *, tiny(x = 1.0_REAL128) ! return :  3.36210314311209350626267781732175260E-4932

  print *, tiny(x = 1.0e+000_REAL32)  ! return :  1.17549435E-38
  print *, tiny(x = 1.0e+000_REAL64)  ! return :  2.2250738585072014E-308
  print *, tiny(x = 1.0e+000_REAL128) ! return :  3.36210314311209350626267781732175260E-4932

  print *, tiny(x = 1.0e+000) ! return :  1.17549435E-38
  print *, tiny(x = 1.0d+000) ! return :  2.2250738585072014E-308
  print *, tiny(x = 1.0q+000) ! return :  3.36210314311209350626267781732175260E-4932

  ! Warning: Extension: exponent-letter 'q' in real-literal-constant at (1) [-Wreal-q-constant]

end program test_tiny

! EOF
