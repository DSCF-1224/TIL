module mod_Fibonacci
    
    ! <module>s to import
    use, intrinsic :: iso_fortran_env
    
    ! require all variables to be explicitly declared
    implicit none
    
    ! contained <subroutine>s and <function>s are below
    contains
    
    recursive function calc_fibonacci(term) result(retval)
    
        integer(kind=INT64), intent(in) :: term
        integer(kind=INT64)             :: retval
        
        select case (term)
            case(1_INT64)
                retval = 1_INT64
            case(2_INT64)
                retval = 1_INT64
            case default
                retval &!
                = calc_fibonacci(term - 1_INT64) &!
                + calc_fibonacci(term - 2_INT64)
        end select

    end function calc_fibonacci

end module mod_Fibonacci

program main

    ! <module>s to import
    use,     intrinsic :: iso_fortran_env
    use, non_intrinsic :: mod_Fibonacci
    use, non_intrinsic :: support_system_clock

    ! require all variables to be explicitly declared
    implicit none

    ! variables for this <program>
    integer(kind=INT64)        :: term, retval
    type   (Type_System_Clock) :: clock_start, clock_stop

    read(unit=INPUT_UNIT, fmt=*) term
    
    call SYSTEM_CLOCK_UsingType(clock_start)
    retval = calc_fibonacci( term )
    call SYSTEM_CLOCK_UsingType(clock_stop)

    print *, term, retval, SYSTEM_CLOCK_ElapsedTime(clock_start, clock_stop)


end program main
