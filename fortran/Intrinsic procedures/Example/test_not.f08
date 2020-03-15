! ==================================================================================================================================
! [used compiler]
! gcc version 9.2.0 (Rev2, Built by MSYS2 project)
! ==================================================================================================================================

program test_not

    ! <module>s to import
    use, intrinsic :: iso_fortran_env

    ! require all variables to be explicitly declared
    implicit none
    
    ! support variables for this <program>
    integer(INT8) :: test_value
    integer(INT8) :: itr
    
    itr = 0_INT8
    
    do while ( itr < bit_size(test_value) )
        test_value = 2_INT8 ** itr
        print '(B8.8,1X,B8.8)', test_value, not(test_value)
        itr = itr + 1_INT8
    end do

end program test_not

! ==================================================================================================================================
! 00000001 11111110
! 00000010 11111101
! 00000100 11111011
! 00001000 11110111
! 00010000 11101111
! 00100000 11011111
! 01000000 10111111
! 10000000 01111111
! ==================================================================================================================================
