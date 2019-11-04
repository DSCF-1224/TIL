! GNU Fortran (i686-posix-dwarf-rev0, Built by MinGW-W64 project) 8.1.0

program test_ieee_value

  ! <module>s to import
  use, intrinsic :: iso_fortran_env
  use, intrinsic :: ieee_arithmetic

  ! require all variables to be explicitly declared
  implicit none
    
  print '(B32.32)', ieee_value(x = 0.0_REAL32, class = IEEE_NEGATIVE_INF)      ! 11111111100000000000000000000000
  print '(B32.32)', ieee_value(x = 0.0_REAL32, class = IEEE_NEGATIVE_NORMAL)   ! 11000010001010000000000000000000
  print '(B32.32)', ieee_value(x = 0.0_REAL32, class = IEEE_NEGATIVE_DENORMAL) ! 10000000010000000000000000000000
  print '(B32.32)', ieee_value(x = 0.0_REAL32, class = IEEE_NEGATIVE_ZERO)     ! 10000000000000000000000000000000
  print '(B32.32)', ieee_value(x = 0.0_REAL32, class = IEEE_POSITIVE_ZERO)     ! 00000000000000000000000000000000
  print '(B32.32)', ieee_value(x = 0.0_REAL32, class = IEEE_POSITIVE_DENORMAL) ! 00000000010000000000000000000000
  print '(B32.32)', ieee_value(x = 0.0_REAL32, class = IEEE_POSITIVE_NORMAL)   ! 01000010001010000000000000000000
  print '(B32.32)', ieee_value(x = 0.0_REAL32, class = IEEE_POSITIVE_INF)      ! 01111111100000000000000000000000
  print '(B32.32)', ieee_value(x = 0.0_REAL32, class = IEEE_QUIET_NAN)         ! 11111111110000000000000000000000
  print '(B32.32)', ieee_value(x = 0.0_REAL32, class = IEEE_SIGNALING_NAN)     ! 11111111110000000000000000000000
  print '(B32.32)', ieee_value(x = 0.0_REAL32, class = IEEE_OTHER_VALUE)       ! 00000000000000000000000000000000
  
  print '(O11.11)', ieee_value(x = 0.0_REAL32, class = IEEE_NEGATIVE_INF)      ! 37740000000
  print '(O11.11)', ieee_value(x = 0.0_REAL32, class = IEEE_NEGATIVE_NORMAL)   ! 30212000000
  print '(O11.11)', ieee_value(x = 0.0_REAL32, class = IEEE_NEGATIVE_DENORMAL) ! 20020000000
  print '(O11.11)', ieee_value(x = 0.0_REAL32, class = IEEE_NEGATIVE_ZERO)     ! 20000000000
  print '(O11.11)', ieee_value(x = 0.0_REAL32, class = IEEE_POSITIVE_ZERO)     ! 00000000000
  print '(O11.11)', ieee_value(x = 0.0_REAL32, class = IEEE_POSITIVE_DENORMAL) ! 00020000000
  print '(O11.11)', ieee_value(x = 0.0_REAL32, class = IEEE_POSITIVE_NORMAL)   ! 10212000000
  print '(O11.11)', ieee_value(x = 0.0_REAL32, class = IEEE_POSITIVE_INF)      ! 17740000000
  print '(O11.11)', ieee_value(x = 0.0_REAL32, class = IEEE_QUIET_NAN)         ! 37760000000
  print '(O11.11)', ieee_value(x = 0.0_REAL32, class = IEEE_SIGNALING_NAN)     ! 37760000000
  print '(O11.11)', ieee_value(x = 0.0_REAL32, class = IEEE_OTHER_VALUE)       ! 00000000000

  print '(Z8.8)',   ieee_value(x = 0.0_REAL32, class = IEEE_NEGATIVE_INF)      ! FF800000
  print '(Z8.8)',   ieee_value(x = 0.0_REAL32, class = IEEE_NEGATIVE_NORMAL)   ! C2280000
  print '(Z8.8)',   ieee_value(x = 0.0_REAL32, class = IEEE_NEGATIVE_DENORMAL) ! 80400000
  print '(Z8.8)',   ieee_value(x = 0.0_REAL32, class = IEEE_NEGATIVE_ZERO)     ! 80000000
  print '(Z8.8)',   ieee_value(x = 0.0_REAL32, class = IEEE_POSITIVE_ZERO)     ! 00000000
  print '(Z8.8)',   ieee_value(x = 0.0_REAL32, class = IEEE_POSITIVE_DENORMAL) ! 00400000
  print '(Z8.8)',   ieee_value(x = 0.0_REAL32, class = IEEE_POSITIVE_NORMAL)   ! 42280000
  print '(Z8.8)',   ieee_value(x = 0.0_REAL32, class = IEEE_POSITIVE_INF)      ! 7F800000
  print '(Z8.8)',   ieee_value(x = 0.0_REAL32, class = IEEE_QUIET_NAN)         ! FFC00000
  print '(Z8.8)',   ieee_value(x = 0.0_REAL32, class = IEEE_SIGNALING_NAN)     ! FFC00000
  print '(Z8.8)',   ieee_value(x = 0.0_REAL32, class = IEEE_OTHER_VALUE)       ! 00000000

  print *,          ieee_value(x = 0.0_REAL32, class = IEEE_NEGATIVE_INF)      !         -Infinity
  print *,          ieee_value(x = 0.0_REAL32, class = IEEE_NEGATIVE_NORMAL)   !   -42.0000000
  print *,          ieee_value(x = 0.0_REAL32, class = IEEE_NEGATIVE_DENORMAL) !   -5.87747175E-39
  print *,          ieee_value(x = 0.0_REAL32, class = IEEE_NEGATIVE_ZERO)     !   -0.00000000
  print *,          ieee_value(x = 0.0_REAL32, class = IEEE_POSITIVE_ZERO)     !    0.00000000
  print *,          ieee_value(x = 0.0_REAL32, class = IEEE_POSITIVE_DENORMAL) !    5.87747175E-39
  print *,          ieee_value(x = 0.0_REAL32, class = IEEE_POSITIVE_NORMAL)   !    42.0000000
  print *,          ieee_value(x = 0.0_REAL32, class = IEEE_POSITIVE_INF)      !          Infinity
  print *,          ieee_value(x = 0.0_REAL32, class = IEEE_QUIET_NAN)         !               NaN
  print *,          ieee_value(x = 0.0_REAL32, class = IEEE_SIGNALING_NAN)     !               NaN
  print *,          ieee_value(x = 0.0_REAL32, class = IEEE_OTHER_VALUE)       !    0.00000000
    
  print '(B64.64)', ieee_value(x = 0.0_REAL64, class = IEEE_NEGATIVE_INF)      ! 1111111111110000000000000000000000000000000000000000000000000000
  print '(B64.64)', ieee_value(x = 0.0_REAL64, class = IEEE_NEGATIVE_NORMAL)   ! 1100000001000101000000000000000000000000000000000000000000000000
  print '(B64.64)', ieee_value(x = 0.0_REAL64, class = IEEE_NEGATIVE_DENORMAL) ! 1000000000001000000000000000000000000000000000000000000000000000
  print '(B64.64)', ieee_value(x = 0.0_REAL64, class = IEEE_NEGATIVE_ZERO)     ! 1000000000000000000000000000000000000000000000000000000000000000
  print '(B64.64)', ieee_value(x = 0.0_REAL64, class = IEEE_POSITIVE_ZERO)     ! 0000000000000000000000000000000000000000000000000000000000000000
  print '(B64.64)', ieee_value(x = 0.0_REAL64, class = IEEE_POSITIVE_DENORMAL) ! 0000000000001000000000000000000000000000000000000000000000000000
  print '(B64.64)', ieee_value(x = 0.0_REAL64, class = IEEE_POSITIVE_NORMAL)   ! 0100000001000101000000000000000000000000000000000000000000000000
  print '(B64.64)', ieee_value(x = 0.0_REAL64, class = IEEE_POSITIVE_INF)      ! 0111111111110000000000000000000000000000000000000000000000000000
  print '(B64.64)', ieee_value(x = 0.0_REAL64, class = IEEE_QUIET_NAN)         ! 1111111111111000000000000000000000000000000000000000000000000000
  print '(B64.64)', ieee_value(x = 0.0_REAL64, class = IEEE_SIGNALING_NAN)     ! 1111111111111000000000000000000000000000000000000000000000000000
  print '(B64.64)', ieee_value(x = 0.0_REAL64, class = IEEE_OTHER_VALUE)       ! 0000000000000000000000000000000000000000000000000000000000000000
  
  print '(O22.22)', ieee_value(x = 0.0_REAL64, class = IEEE_NEGATIVE_INF)      ! 1777600000000000000000
  print '(O22.22)', ieee_value(x = 0.0_REAL64, class = IEEE_NEGATIVE_NORMAL)   ! 1401050000000000000000
  print '(O22.22)', ieee_value(x = 0.0_REAL64, class = IEEE_NEGATIVE_DENORMAL) ! 1000100000000000000000
  print '(O22.22)', ieee_value(x = 0.0_REAL64, class = IEEE_NEGATIVE_ZERO)     ! 1000000000000000000000
  print '(O22.22)', ieee_value(x = 0.0_REAL64, class = IEEE_POSITIVE_ZERO)     ! 0000000000000000000000
  print '(O22.22)', ieee_value(x = 0.0_REAL64, class = IEEE_POSITIVE_DENORMAL) ! 0000100000000000000000
  print '(O22.22)', ieee_value(x = 0.0_REAL64, class = IEEE_POSITIVE_NORMAL)   ! 0401050000000000000000
  print '(O22.22)', ieee_value(x = 0.0_REAL64, class = IEEE_POSITIVE_INF)      ! 0777600000000000000000
  print '(O22.22)', ieee_value(x = 0.0_REAL64, class = IEEE_QUIET_NAN)         ! 1777700000000000000000
  print '(O22.22)', ieee_value(x = 0.0_REAL64, class = IEEE_SIGNALING_NAN)     ! 1777700000000000000000
  print '(O22.22)', ieee_value(x = 0.0_REAL64, class = IEEE_OTHER_VALUE)       ! 0000000000000000000000

  print '(Z16.16)', ieee_value(x = 0.0_REAL64, class = IEEE_NEGATIVE_INF)      ! FFF0000000000000
  print '(Z16.16)', ieee_value(x = 0.0_REAL64, class = IEEE_NEGATIVE_NORMAL)   ! C045000000000000
  print '(Z16.16)', ieee_value(x = 0.0_REAL64, class = IEEE_NEGATIVE_DENORMAL) ! 8008000000000000
  print '(Z16.16)', ieee_value(x = 0.0_REAL64, class = IEEE_NEGATIVE_ZERO)     ! 8000000000000000
  print '(Z16.16)', ieee_value(x = 0.0_REAL64, class = IEEE_POSITIVE_ZERO)     ! 0000000000000000
  print '(Z16.16)', ieee_value(x = 0.0_REAL64, class = IEEE_POSITIVE_DENORMAL) ! 0008000000000000
  print '(Z16.16)', ieee_value(x = 0.0_REAL64, class = IEEE_POSITIVE_NORMAL)   ! 4045000000000000
  print '(Z16.16)', ieee_value(x = 0.0_REAL64, class = IEEE_POSITIVE_INF)      ! 7FF0000000000000
  print '(Z16.16)', ieee_value(x = 0.0_REAL64, class = IEEE_QUIET_NAN)         ! FFF8000000000000
  print '(Z16.16)', ieee_value(x = 0.0_REAL64, class = IEEE_SIGNALING_NAN)     ! FFF8000000000000
  print '(Z16.16)', ieee_value(x = 0.0_REAL64, class = IEEE_OTHER_VALUE)       ! 0000000000000000

  print *,          ieee_value(x = 0.0_REAL64, class = IEEE_NEGATIVE_INF)      !                  -Infinity
  print *,          ieee_value(x = 0.0_REAL64, class = IEEE_NEGATIVE_NORMAL)   !   -42.000000000000000
  print *,          ieee_value(x = 0.0_REAL64, class = IEEE_NEGATIVE_DENORMAL) !   -1.1125369292536007E-308
  print *,          ieee_value(x = 0.0_REAL64, class = IEEE_NEGATIVE_ZERO)     !   -0.0000000000000000
  print *,          ieee_value(x = 0.0_REAL64, class = IEEE_POSITIVE_ZERO)     !    0.0000000000000000
  print *,          ieee_value(x = 0.0_REAL64, class = IEEE_POSITIVE_DENORMAL) !    1.1125369292536007E-308
  print *,          ieee_value(x = 0.0_REAL64, class = IEEE_POSITIVE_NORMAL)   !    42.000000000000000
  print *,          ieee_value(x = 0.0_REAL64, class = IEEE_POSITIVE_INF)      !                   Infinity
  print *,          ieee_value(x = 0.0_REAL64, class = IEEE_QUIET_NAN)         !                        NaN
  print *,          ieee_value(x = 0.0_REAL64, class = IEEE_SIGNALING_NAN)     !                        NaN
  print *,          ieee_value(x = 0.0_REAL64, class = IEEE_OTHER_VALUE)       !    0.0000000000000000

end program test_ieee_value

! EOF
