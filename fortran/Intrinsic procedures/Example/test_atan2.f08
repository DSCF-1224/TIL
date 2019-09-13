program test_atan2

  ! <module>s to import
  use, intrinsic :: iso_fortran_env

  ! constants for this <program>
  real(REAL64), parameter :: CircCnst = acos(-1.0e+000_REAL64)

  call trial(re= 0.0e+000_REAL64, im= 0.0e+000_REAL64)
  call trial(re= 1.0e+000_REAL64, im= 1.0e+000_REAL64)
  call trial(re= 0.0e+000_REAL64, im= 1.0e+000_REAL64)
  call trial(re=-1.0e+000_REAL64, im= 1.0e+000_REAL64)
  call trial(re=-1.0e+000_REAL64, im= 1.0e+000_REAL64)
  call trial(re=-1.0e+000_REAL64, im=-1.0e+000_REAL64)
  call trial(re= 0.0e+000_REAL64, im=-1.0e+000_REAL64)
  call trial(re= 1.0e+000_REAL64, im=-1.0e+000_REAL64)

  ! contained <subroutine>s and <function>s are below
  contains

  subroutine trial(re, im)

    ! arguments for this <subroutine>
    real(REAL64), intent(in) :: re, im

    write(unit=OUTPUT_UNIT, fmt='(3ES25.16e3)', advance='yes') re, im, atan2(im, re) / CircCnst
    return

  end subroutine trial

end program test_atan2

!--- End of the code ---!
