module mod_Fibonacci
    
    ! <module>s to import
    use, intrinsic :: iso_fortran_env
    
    ! require all variables to be explicitly declared
    implicit none

    ! variables for this <module>
    type type_fib
        integer (kind=INT64) :: x
        integer (kind=INT64) :: y
        integer (kind=INT64) :: itr
    end type type_fib
    
    ! contained <subroutine>s and <function>s are below
    contains
    
    recursive pure function calc_fibonacci_type( type_inpt ) result( type_otpt )
    
        type(type_fib), intent(in) :: type_inpt
        type(type_fib)             :: type_temp
        type(type_fib)             :: type_otpt

        if ( type_inpt%itr .eq. 1_INT64 ) then
            type_otpt%x   = type_inpt%x
            type_otpt%y   = type_inpt%y
            type_otpt%itr = type_inpt%itr
        else
            type_temp%x   = type_inpt%y
            type_temp%y   = type_inpt%x + type_inpt%y
            type_temp%itr = type_inpt%itr - 1_INT64
            type_otpt     = calc_fibonacci_type(type_temp)
        end if

        return

    end function calc_fibonacci_type
    
    pure function calc_fibonacci(term) result(retval)
    
        integer(kind=INT64), intent(in) :: term
        integer(kind=INT64)             :: retval

        type(type_fib) :: type_buf

        type_buf%x   = 1_INT64
        type_buf%y   = 1_INT64
        type_buf%itr = term
        type_buf     = calc_fibonacci_type(type_buf)

        retval = type_buf%x
        return

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
