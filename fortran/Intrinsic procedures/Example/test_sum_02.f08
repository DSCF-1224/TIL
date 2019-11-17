program test_sum_02

  ! <module>s to import
  use,     intrinsic :: iso_fortran_env
  use, non_intrinsic :: moduleSupportSystemClock
  
   ! require all variables to be explicitly declared
  implicit none

  ! constants for this <program>
  integer, parameter :: DimSize = 10 ** 4

  ! variables for this <program>
  real(REAL64), allocatable :: testData(:,:)

  ! support variables for this <program>
  integer :: iter

  ! STEP.01
  ! allocate the array to store the test data
  allocate ( testData(1:DimSize, 1:DimSize) )

  ! STEP.02
  ! generate the test data
  testData(:,:) = 1.0_REAL64

  ! STEP.03
  ! check how long does it take to use the intrinsic function <sum>
  call test_sum(1)
  call test_sum(2)

  ! STEP.04
  ! allocate the array to store the test data
  deallocate ( testData )

  ! contained <subroutine>s and <function>s are below
  contains

  subroutine test_sum ( dim )

    ! arguments for this <subroutine>
    integer, intent(in) :: dim

    ! variables for this <subroutine>
    real(REAL64)       :: valElapsedTimeEach(1:DimSize)
    real(REAL64)       :: valElapsedTimeAverage
    real(REAL64)       :: valElapsedTimeStdErr
    real(REAL64)       :: returnValueSum
    type(typeSysClock) :: objClockBegin
    type(typeSysClock) :: objClockEnd

    ! STEP.01/03
    ! initialize the variables
    valElapsedTimeAverage = 0.0_REAL64
    valElapsedTimeStdErr  = 0.0_REAL64

    ! STEP.02/03
    ! use the intrinsic function <SUM> to test how long does it take to use the function
    select case( dim )
      case(1)

        print '(A,I0,A)', 'sum( array = testData(1:', DimSize, ',iter) )'

        do iter = 1, DimSize, 1
      
          call system_clock( objClockBegin )
          returnValueSum = sum( array = testData(:,iter) )
          call system_clock( objClockEnd )
      
          valElapsedTimeEach(iter) = calcElapsedTime( objClockBegin, objClockEnd )
      
        end do

      case(2)

        print '(A,I0,A)', 'sum( array = testData(iter,1:', DimSize, ') )'

        do iter = 1, DimSize, 1
      
          call system_clock( objClockBegin )
          returnValueSum = sum( array = testData(iter,:) )
          call system_clock( objClockEnd )
      
          valElapsedTimeEach(iter) = calcElapsedTime( objClockBegin, objClockEnd )
      
        end do

    end select

    ! STEP.03/03
    ! calculate & show statistical data
    valElapsedTimeAverage = sum( array = valElapsedTimeEach(:) ) / DimSize

    print '(A7,1X,":",1X,ES23.15e3)', 'average', valElapsedTimeAverage
    print '(A7,1X,":",1X,ES23.15e3)', 'minval',  minval( array = valElapsedTimeEach(:) )
    print '(A7,1X,":",1X,ES23.15e3)', 'maxval',  maxval( array = valElapsedTimeEach(:) )

    valElapsedTimeEach(:) = valElapsedTimeEach(:) - valElapsedTimeAverage

    do iter = 1, DimSize, 1
      valElapsedTimeStdErr = valElapsedTimeStdErr + valElapsedTimeEach(iter) * valElapsedTimeEach(iter)
    end do

    valElapsedTimeStdErr = sqrt( valElapsedTimeStdErr / (DimSize - 1) )

    print '(A7,1X,":",1X,ES23.15e3)', 'stderr', valElapsedTimeStdErr

  end subroutine test_sum

end program test_sum_02

!--- result ---!
! 
! "-O0"
! sum( array = testData(1:10000,iter) )
! average :  8.124800000000001E-006
!  minval :  7.100000000000000E-006
!  maxval :  6.510000000000000E-005
!  stderr :  2.992784428565345E-006
! 
! sum( array = testData(iter,1:10000) )
! average :  7.056472000000001E-005
!  minval :  6.439999999999999E-005
!  maxval :  3.009000000000000E-004
!  stderr :  9.133984250502597E-006
! 
! 
! 
! "-O1"
! sum( array = testData(1:10000,iter) )
! average :  2.656270000000000E-006
!  minval :  2.400000000000000E-006
!  maxval :  2.820000000000000E-005
!  stderr :  1.709965814105224E-006
! 
! sum( array = testData(iter,1:10000) )
! average :  2.573080000000000E-006
!  minval :  2.400000000000000E-006
!  maxval :  2.620000000000000E-005
!  stderr :  1.191810116895923E-006
! 
! 
! 
! "-O2"
! sum( array = testData(1:10000,iter) )
! average :  5.127000000000000E-008
!  minval :  0.000000000000000E+000
!  maxval :  2.280000000000000E-005
!  stderr :  5.345268552616412E-007
! 
! sum( array = testData(iter,1:10000) )
! average :  3.943000000000000E-008
!  minval :  0.000000000000000E+000
!  maxval :  1.810000000000000E-005
!  stderr :  2.903182797730054E-007
! 
! 
! 
! "-O3"
! sum( array = testData(1:10000,iter) )
! average :  4.715000000000000E-008
!  minval :  0.000000000000000E+000
!  maxval :  1.890000000000000E-005
!  stderr :  4.632098162100879E-007
! 
! sum( array = testData(iter,1:10000) )
! average :  3.482000000000000E-008
!  minval :  0.000000000000000E+000
!  maxval :  1.570000000000000E-005
!  stderr :  1.636467097883806E-007
! 

!--- EOF ---!
