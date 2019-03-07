! [reference]
! http://fortranwiki.org/fortran/show/digits

program test_digits_f08

  ! <module>s to import
  use, intrinsic :: iso_fortran_env

  ! require all variables to be explicitly declared
  implicit none


  ! STEP.01
  print '(A)',        '[INTEGER]'
  print '(A5,1X,I2)', 'INT8 ', digits(1_INT8 ) ! return value is  7
  print '(A5,1X,I2)', 'INT16', digits(1_INT16) ! return value is 15
  print '(A5,1X,I2)', 'INT32', digits(1_INT32) ! return value is 31
  print '(A5,1X,I2)', 'INT64', digits(1_INT64) ! return value is 63

  ! STEP.02
  print '(/,A)',      '[REAL]'
  print '(A7,1X,I3)', 'REAL32 ', digits(0.0E+00_REAL32 ) ! return value is  24
  print '(A7,1X,I3)', 'REAL64 ', digits(0.0E+00_REAL64 ) ! return value is  53
  print '(A7,1X,I3)', 'REAL128', digits(0.0E+00_REAL128) ! return value is 113

end program test_digits_f08
