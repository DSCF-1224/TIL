! ==================================================================================================================================
! 
! [objective]
! - support to use intrinsic subroutine `random_number`
! - support to use intrinsic subroutine `random_seed`
! 
! [used compiler]
! - Not yet
! 
! [reference]
! - https://gcc.gnu.org/onlinedocs/gfortran/RANDOM_005fSEED.html#RANDOM_005fSEED
! - https://qiita.com/implicit_none/items/12c5404a11e6c237d100
! - https://www.nag-j.co.jp/fortran/tips/tips_RandomNumberInFortran.html
! 
! ==================================================================================================================================

module mod_random_number

    ! <module>s to import
    use, intrinsic :: iso_fortran_env

    ! require all variables to be explicitly declared
    implicit none

    ! accessibility of the <subroutine>s and <function>s in this <module>
    public :: type_random_number_seed ! type
    public :: get_random_number_seed  ! subroutine
    public :: put_random_number_seed  ! subroutine


    ! <type>s for this <module>
    type type_random_number_seed
        integer(INT32),              public :: size     = 0_INT32
        integer(INT32), allocatable, public :: value(:) = 0_INT32
    end type type_random_number_seed


    ! contained <subroutine>s and <function>s are below
    contains


    subroutine get_random_number_seed (obj)

        ! arguments for this <subroutine>
        type(type_random_number_seed), intent(inout) :: obj

        ! variables for this <subroutine>
        logical :: necessary_alloc

        ! STEP.01
        !  get the minimum size of the arrays used with the `PUT` and `GET` arguments @ intrinsic subroutine `RANDOM_NUMBER`
        call random_seed(size= obj%size)

        ! STEP.02
        ! Verify that the size of the array needs to be updated to store the seed value of the random number.
        if ( allocated(obj%value) ) then

            if ( size(obj%value) .ne. obj%size ) then
                deallocate(obj%value)
                necessary_alloc = .true.
            else
                necessary_alloc = .false.
            end if

        else
            necessary_alloc = .true.
        end if

        ! STEP.03
        ! allocate the array to store the seed values,
        ! if it was required.
        if (necessary_alloc) allocate( obj%value(1:obj%size) )

        ! STEP.04
        ! get the seed values
        call random_seed( get= obj%value(1:obj%size) )

    end subroutine get_random_number_seed


    subroutine put_random_number_seed (obj)

        ! arguments for this <subroutine>
        type(type_random_number_seed), intent(in) :: obj

        ! STEP.01
        ! check the status of the argument
        if ( obj%size .lt. 1 ) then
            write(unit= ERROR_UNIT, fmt= '(A)') 'The size of array to store the seed values must be positive !'
        end if

        ! STEP.02
        ! put the seed values
        call random_seed( put= obj%values(1:obj%size) )

    end subroutine put_random_number_seed

end module mod_random_number

! ==================================================================================================================================
! EOF
! ==================================================================================================================================
