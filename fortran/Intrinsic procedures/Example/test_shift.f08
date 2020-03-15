! ==================================================================================================================================
! [used compiler]
! gcc version 9.2.0 (Rev2, Built by MSYS2 project)
! ==================================================================================================================================

program test_shift

    use, intrinsic :: iso_fortran_env
    
    call test_functions( transfer(source=B'00000000', mold=1_INT8) )
    call test_functions( transfer(source=B'11111111', mold=1_INT8) )
    call test_functions( transfer(source=B'11110000', mold=1_INT8) )
    call test_functions( transfer(source=B'00001111', mold=1_INT8) )

    ! contained <subroutine>s and <function>s are below
    contains

    subroutine test_functions (argument)

        ! arguments for this <subroutine>
        integer(INT8), intent(in) :: argument

        ! support variables for this <subroutine>t
        integer :: itr

        print '(/,A,11A9)', 'shift', 'target', 'ishft+', 'ishft-', 'ishftc+', 'ishftc-', 'shiftl+', 'shiftl-', 'shiftr+', 'shiftr-', 'shifta+', 'shifta-'

        do itr = - ( bit_size(argument) + 1 ), bit_size(argument) + 1, 1
            print '(I5,11B9.8)',                  &!
                itr, argument,                    &!
                ishft (i= argument, shift=  itr), &!
                ishft (i= argument, shift= -itr), &!
                ishftc(i= argument, shift=  itr), &!
                ishftc(i= argument, shift= -itr), &!
                shiftl(i= argument, shift=  itr), &!
                shiftl(i= argument, shift= -itr), &!
                shiftr(i= argument, shift=  itr), &!
                shiftr(i= argument, shift= -itr), &!
                shifta(i= argument, shift=  itr), &!
                shifta(i= argument, shift= -itr)
        end do

        return

    end subroutine test_functions

end program test_shift

! ==================================================================================================================================
! shift   target   ishft+   ishft-  ishftc+  ishftc-  shiftl+  shiftl-  shiftr+  shiftr-  shifta+  shifta-
!    -9 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
!    -8 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
!    -7 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
!    -6 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
!    -5 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
!    -4 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
!    -3 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
!    -2 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
!    -1 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
!     0 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
!     1 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
!     2 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
!     3 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
!     4 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
!     5 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
!     6 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
!     7 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
!     8 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
!     9 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
! ==================================================================================================================================
! shift   target   ishft+   ishft-  ishftc+  ishftc-  shiftl+  shiftl-  shiftr+  shiftr-  shifta+  shifta-
!    -9 11111111 00000000 00000000 11111111 11111111 00000000 00000000 00000000 00000000 11111111 11111111
!    -8 11111111 00000000 00000000 11111111 11111111 00000000 00000000 00000000 00000000 11111111 11111111
!    -7 11111111 00000001 10000000 11111111 11111111 00000000 10000000 00000000 00000001 11111111 11111111
!    -6 11111111 00000011 11000000 11111111 11111111 00000000 11000000 00000000 00000011 11111111 11111111
!    -5 11111111 00000111 11100000 11111111 11111111 00000000 11100000 00000000 00000111 11111111 11111111
!    -4 11111111 00001111 11110000 11111111 11111111 00000000 11110000 00000000 00001111 11111111 11111111
!    -3 11111111 00011111 11111000 11111111 11111111 00000000 11111000 00000000 00011111 11111111 11111111
!    -2 11111111 00111111 11111100 11111111 11111111 00000000 11111100 00000000 00111111 11111111 11111111
!    -1 11111111 01111111 11111110 11111111 11111111 00000000 11111110 00000000 01111111 11111111 11111111
!     0 11111111 11111111 11111111 11111111 11111111 11111111 11111111 11111111 11111111 11111111 11111111
!     1 11111111 11111110 01111111 11111111 11111111 11111110 00000000 01111111 00000000 11111111 11111111
!     2 11111111 11111100 00111111 11111111 11111111 11111100 00000000 00111111 00000000 11111111 11111111
!     3 11111111 11111000 00011111 11111111 11111111 11111000 00000000 00011111 00000000 11111111 11111111
!     4 11111111 11110000 00001111 11111111 11111111 11110000 00000000 00001111 00000000 11111111 11111111
!     5 11111111 11100000 00000111 11111111 11111111 11100000 00000000 00000111 00000000 11111111 11111111
!     6 11111111 11000000 00000011 11111111 11111111 11000000 00000000 00000011 00000000 11111111 11111111
!     7 11111111 10000000 00000001 11111111 11111111 10000000 00000000 00000001 00000000 11111111 11111111
!     8 11111111 00000000 00000000 11111111 11111111 00000000 00000000 00000000 00000000 11111111 11111111
!     9 11111111 00000000 00000000 11111111 11111111 00000000 00000000 00000000 00000000 11111111 11111111
! ==================================================================================================================================
! shift   target   ishft+   ishft-  ishftc+  ishftc-  shiftl+  shiftl-  shiftr+  shiftr-  shifta+  shifta-
!    -9 11110000 00000000 00000000 01111000 11100001 00000000 00000000 00000000 00000000 11111111 11111111
!    -8 11110000 00000000 00000000 11110000 11110000 00000000 00000000 00000000 00000000 11111111 11111111
!    -7 11110000 00000001 00000000 11100001 01111000 00000000 00000000 00000000 00000001 11111111 11111111
!    -6 11110000 00000011 00000000 11000011 00111100 00000000 00000000 00000000 00000011 11111111 11111111
!    -5 11110000 00000111 00000000 10000111 00011110 00000000 00000000 00000000 00000111 11111111 11111111
!    -4 11110000 00001111 00000000 00001111 00001111 00000000 00000000 00000000 00001111 11111111 11111111
!    -3 11110000 00011110 10000000 00011110 10000111 00000000 10000000 00000000 00011110 11111111 11111110
!    -2 11110000 00111100 11000000 00111100 11000011 00000000 11000000 00000000 00111100 11111111 11111100
!    -1 11110000 01111000 11100000 01111000 11100001 00000000 11100000 00000000 01111000 11111111 11111000
!     0 11110000 11110000 11110000 11110000 11110000 11110000 11110000 11110000 11110000 11110000 11110000
!     1 11110000 11100000 01111000 11100001 01111000 11100000 00000000 01111000 00000000 11111000 11111111
!     2 11110000 11000000 00111100 11000011 00111100 11000000 00000000 00111100 00000000 11111100 11111111
!     3 11110000 10000000 00011110 10000111 00011110 10000000 00000000 00011110 00000000 11111110 11111111
!     4 11110000 00000000 00001111 00001111 00001111 00000000 00000000 00001111 00000000 11111111 11111111
!     5 11110000 00000000 00000111 00011110 10000111 00000000 00000000 00000111 00000000 11111111 11111111
!     6 11110000 00000000 00000011 00111100 11000011 00000000 00000000 00000011 00000000 11111111 11111111
!     7 11110000 00000000 00000001 01111000 11100001 00000000 00000000 00000001 00000000 11111111 11111111
!     8 11110000 00000000 00000000 11110000 11110000 00000000 00000000 00000000 00000000 11111111 11111111
!     9 11110000 00000000 00000000 11100001 01111000 00000000 00000000 00000000 00000000 11111111 11111111
! ==================================================================================================================================
! shift   target   ishft+   ishft-  ishftc+  ishftc-  shiftl+  shiftl-  shiftr+  shiftr-  shifta+  shifta-
!    -9 00001111 00000000 00000000 10000111 00011110 00000000 00000000 00000000 00000000 00000000 00000000
!    -8 00001111 00000000 00000000 00001111 00001111 00000000 00000000 00000000 00000000 00000000 00000000
!    -7 00001111 00000000 10000000 00011110 10000111 00000000 10000000 00000000 00000000 00000000 00000000
!    -6 00001111 00000000 11000000 00111100 11000011 00000000 11000000 00000000 00000000 00000000 00000000
!    -5 00001111 00000000 11100000 01111000 11100001 00000000 11100000 00000000 00000000 00000000 00000000
!    -4 00001111 00000000 11110000 11110000 11110000 00000000 11110000 00000000 00000000 00000000 00000000
!    -3 00001111 00000001 01111000 11100001 01111000 00000000 01111000 00000000 00000001 00000000 00000001
!    -2 00001111 00000011 00111100 11000011 00111100 00000000 00111100 00000000 00000011 00000000 00000011
!    -1 00001111 00000111 00011110 10000111 00011110 00000000 00011110 00000000 00000111 00000000 00000111
!     0 00001111 00001111 00001111 00001111 00001111 00001111 00001111 00001111 00001111 00001111 00001111
!     1 00001111 00011110 00000111 00011110 10000111 00011110 00000000 00000111 00000000 00000111 00000000
!     2 00001111 00111100 00000011 00111100 11000011 00111100 00000000 00000011 00000000 00000011 00000000
!     3 00001111 01111000 00000001 01111000 11100001 01111000 00000000 00000001 00000000 00000001 00000000
!     4 00001111 11110000 00000000 11110000 11110000 11110000 00000000 00000000 00000000 00000000 00000000
!     5 00001111 11100000 00000000 11100001 01111000 11100000 00000000 00000000 00000000 00000000 00000000
!     6 00001111 11000000 00000000 11000011 00111100 11000000 00000000 00000000 00000000 00000000 00000000
!     7 00001111 10000000 00000000 10000111 00011110 10000000 00000000 00000000 00000000 00000000 00000000
!     8 00001111 00000000 00000000 00001111 00001111 00000000 00000000 00000000 00000000 00000000 00000000
!     9 00001111 00000000 00000000 00011110 10000111 00000000 00000000 00000000 00000000 00000000 00000000
! ==================================================================================================================================
