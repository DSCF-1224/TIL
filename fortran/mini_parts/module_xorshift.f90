! ==================================================================================================================================
! [objective]
! - implementation of `Xorshift`
! [reference]
! - https://en.wikipedia.org/wiki/Main_Page
!   - https://en.wikipedia.org/wiki/Xorshift
!   - https://jp.wikipedia.org/wiki/Xorshift
! - http://fortranwiki.org/fortran/show/HomePage
!   - http://fortranwiki.org/fortran/show/Intrinsic+procedures
!     - http://fortranwiki.org/fortran/show/ieor
!     - http://fortranwiki.org/fortran/show/shiftl
!     - http://fortranwiki.org/fortran/show/shiftr
! ==================================================================================================================================

module mod_xorshift

    ! <module>s to import
    use, intrinsic :: iso_fortran_env

    ! require all variables to be explicitly declared
    implicit none


    ! accessibility of the <subroutine>s and <function>s in this <module>
    public  :: type_xorshift32
    public  :: type_xorshift64
    public  :: type_xorshift128
    private :: type_xorshift128_state

    public  :: get_seed     ! interface
    private :: get_seed_32  ! function
    private :: get_seed_64  ! function
    private :: get_seed_128 ! function

    public  :: set_seed     ! interface
    private :: set_seed_32  ! subroutine
    private :: set_seed_64  ! subroutine
    private :: set_seed_128 ! subroutine


    ! <type>s for this <module>
    type type_xorshift32
        integer(INT32), private :: seed
        integer(INT32), private :: state
    end type type_xorshift32

    type type_xorshift64
        integer(INT64), private :: seed
        integer(INT64), private :: state
    end type type_xorshift64

    type type_xorshift128_state
        integer(INT32), public :: x
        integer(INT32), public :: y
        integer(INT32), public :: z
        integer(INT32), public :: w
    end type type_xorshift128_state

    type type_xorshift128
        integer(INT32),                  private :: seed
        type   (type_xorshift128_state), private :: state
    end type type_xorshift128


    ! <interface>s for this <module>
    interface set_seed
        module procedure :: set_seed_32
        module procedure :: set_seed_64
        module procedure :: set_seed_128
    end interface set_seed


    ! contained <subroutine>s and <function>s are below
    contains


    ! [objective]
    ! get the seed value from the `type_xorshift32` object
    pure function get_seed_32 (obj) result(seed)

        ! arguments for this <function>
        type(type_xorshift32), intent(in) :: obj

        ! return value of this <function>
        integer(INT32) :: seed

        seed = obj%seed
        return

    end function get_seed_32


    ! [objective]
    ! get the seed value from the `type_xorshift64` object
    pure function get_seed_64 (obj) result(seed)

        ! arguments for this <function>
        type(type_xorshift64), intent(in) :: obj

        ! return value of this <function>
        integer(INT64) :: seed

        seed = obj%seed
        return

    end function get_seed_64


    ! [objective]
    ! get the seed value from the `type_xorshift128` object
    pure function get_seed_128 (obj) result(seed)

        ! arguments for this <function>
        type(type_xorshift128), intent(in) :: obj

        ! return value of this <function>
        integer(INT32) :: seed

        seed = obj%seed
        return

    end function get_seed_128


    ! [objective]
    ! set the seed value for `Xorshift` which has one 32-bit word of state, and period {2}^{32} - 1
    subroutine set_seed_32 (obj, seed)

        ! arguments for this <subroutine>
        type   (type_xorshift32), intent(inout) :: obj
        integer(INT32),           intent(in)    :: seed

        obj%seed  = seed
        obj%state = seed

    end subroutine set_seed_32


    ! [objective]
    ! set the seed value for `Xorshift` which has one 64-bit word of state, and period {2}^{64} - 1
    subroutine set_seed_64 (obj, seed)

        ! arguments for this <subroutine>
        type   (type_xorshift64), intent(inout) :: obj
        integer(INT64),           intent(in)    :: seed

        obj%seed  = seed
        obj%state = seed

    end subroutine set_seed_64


    ! [objective]
    ! set the seed value for `Xorshift` which has four 32-bit word of state, and period {2}^{128} - 1
    subroutine set_seed_128 (obj, seed)

        ! arguments for this <subroutine>
        type   (type_xorshift128), intent(inout) :: obj
        integer(INT64),            intent(in)    :: seed

        obj%seed    = seed
        obj%state%x = seed

    end subroutine set_seed_128


    ! [objective]
    ! generate a new quasi-random number using `Xorshift` which has one 32-bit word of state, and period {2}^{32} - 1
    subroutine random_number_xorshift32_sclr(obj, rand)

        ! arguments for this <subroutine>
        type   (type_xorshift32), intent(inout) :: obj
        integer(INT32),           intent(inout) :: rand

        rand      = ieor( i= obj%state, j= shiftl( i= obj%state, j= 13 ) )
        rand      = ieor( i= rand,      j= shiftr( i= rand,      j= 17 ) )
        rand      = ieor( i= rand,      j= shiftl( i= rand,      j=  5 ) )
        obj%state = rand

        return

    end subroutine random_number_xorshift32_sclr


end module mod_xorshift

! ==================================================================================================================================
! EOF
! ==================================================================================================================================
