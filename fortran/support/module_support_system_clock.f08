! ==================================================================================================================================
! [target]
! support to use SYSTEM_CLOCK
! [used compiler]
! GNU Fortran (Rev2, Built by MSYS2 project) 9.2.0
! ==================================================================================================================================

module module_support_system_clock

    ! <module>s to import
    use, intrinsic :: iso_fortran_env



    ! require all variables to be explicitly declared
    implicit none



    ! accessibility of the <subroutine>s and <function>s in this <module>
    public  :: typeSysClock       ! type
    private :: getDataSystemClock ! subroutine
    public  :: calcElapsedTime    ! function



    ! <type>s for this <module>
    type typeSysClock
        integer(INT64), private :: count
        integer(INT64), private :: count_rate
        integer(INT64), private :: count_max
    end type typeSysClock



    ! <interface>s for this <module>
    interface system_clock
        module procedure :: getDataSystemClock
    end interface system_clock



    ! contained <subroutine>s and <function>s are below
    contains



    subroutine getDataSystemClock ( instance )

        ! arguments for this <subroutine>
        type(typeSysClock), intent(inout) :: instance

        ! STEP.01/01
        ! call intrinsic subroutine <SYSTEM_CLOCK>
        call system_clock(                    &!
            count      = instance%count,      &!
            count_rate = instance%count_rate, &!
            count_max  = instance%count_max   &!  
        )

        ! STEP.END
        return

    end subroutine getDataSystemClock



    pure function calcElapsedTime ( instance_bgn, instance_end ) result( valElapsedTime )

        ! arguments for this <function> 
        type(typeSysClock), intent(in) :: instance_bgn, instance_end

        ! return value of this <function>
        real(REAL64) :: valElapsedTime

        ! STEP.01/02
        ! calculate the `count` increment of the <SYSTEM_CLOCK>
        if ( instance_end%count .lt. instance_end%count ) then
            valElapsedTime = real( instance_end%count_max - instance_bgn%count + instance_end%count + 1_INT64, kind = REAL64 )
        else
            valElapsedTime = real( instance_end%count - instance_bgn%count, kind = REAL64 )
        end if

        ! STEP.02/02
        ! calculate the elapsed time
        valElapsedTime = valElapsedTime / instance_end%count_rate

        ! STEP.END
        return

    end function calcElapsedTime

end module module_support_system_clock

! ==================================================================================================================================
! End of the file
