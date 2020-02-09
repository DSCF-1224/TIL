! ==================================================================================================================================
! * target
!   * to define a class to handle rectangular coordinate (2D)
! * reference
!   * https://qiita.com/cure_honey/items/99abb9f922089a974d4d
!   * https://amanotk.github.io/fortran-resume-public/chap09_sample5_f90.html
! ==================================================================================================================================

module module_coordinate_rect2d

    ! <module>s to import
    use, intrinsic :: iso_fortran_env



    ! require all variables to be explicitly declared
    implicit none



    ! accessibility of the <subroutine>s and <function>s in this <module>
    public  :: rect2d32  ! type
    public  :: rect2d64  ! type
    public  :: rect2d128 ! type

    private :: minus32  ! function for interface operator
    private :: minus64  ! function for interface operator
    private :: minus128 ! function for interface operator

    private :: add32  ! function for interface operator
    private :: add64  ! function for interface operator
    private :: add128 ! function for interface operator

    private :: subtract32  ! function for interface operator
    private :: subtract64  ! function for interface operator
    private :: subtract128 ! function for interface operator

    private :: product_cs32  ! function for interface operator
    private :: product_cs64  ! function for interface operator
    private :: product_cs128 ! function for interface operator

    private :: product_sc32  ! function for interface operator
    private :: product_sc64  ! function for interface operator
    private :: product_sc128 ! function for interface operator

    public  :: abs2     ! interface of function
    private :: abs2_32  ! function
    private :: abs2_64  ! function
    private :: abs2_128 ! function

    public  :: abs    ! interface of function
    private :: abs32  ! function
    private :: abs64  ! function
    private :: abs128 ! function

    public  :: assign_value    ! interface of subroutine
    private :: assign_value32  ! subroutine
    private :: assign_value64  ! subroutine
    private :: assign_value128 ! subroutine

    public  :: assign_zero    ! interface of subroutine
    private :: assign_zero32  ! subroutine
    private :: assign_zero64  ! subroutine
    private :: assign_zero128 ! subroutine



    ! <type>s for this <module>
    type rect2d32
        real(REAL32), public :: x
        real(REAL32), public :: y
    end type rect2d32

    type rect2d64
        real(REAL64), public :: x
        real(REAL64), public :: y
    end type rect2d64

    type rect2d128
        real(REAL128), public :: x
        real(REAL128), public :: y
    end type rect2d128



    ! <interface>s for this <module>
    interface assignment (=)
    end interface assignment (=)

    interface operator (-)
        module procedure :: minus32
        module procedure :: minus64
        module procedure :: minus128
    end interface operator (-)

    interface operator (+)
        module procedure :: add32
        module procedure :: add64
        module procedure :: add128
    end interface operator (+)

    interface operator (-)
        module procedure :: subtract32
        module procedure :: subtract64
        module procedure :: subtract128
    end interface operator (-)

    interface operator (*)
        module procedure :: product_cs32
        module procedure :: product_cs64
        module procedure :: product_cs128
        module procedure :: product_sc32
        module procedure :: product_sc64
        module procedure :: product_sc128
    end interface operator (*)

    interface abs2
        module procedure :: abs2_32
        module procedure :: abs2_64
        module procedure :: abs2_128
    end interface abs2

    interface abs
        module procedure :: abs32
        module procedure :: abs64
        module procedure :: abs128
    end interface abs

    interface  assign_value
        module procedure ::    assign_value32
        module procedure ::    assign_value64
        module procedure ::    assign_value128
    end interface  assign_value

    interface  assign_zero
        module procedure ::    assign_zero32
        module procedure ::    assign_zero64
        module procedure ::    assign_zero128
    end interface  assign_zero


    ! contained <subroutine>s and <function>s are below
    contains



    pure function minus32 (arg) result(cd)

        ! arguments for this <function>
        type(rect2d32), intent(in) :: arg

        ! return value of this <function>
        type(rect2d32) :: cd

        cd = rect2d32(- arg%x, - arg%y)

    end function minus32

    pure function minus64 (arg) result(cd)

        ! arguments for this <function>
        type(rect2d64), intent(in) :: arg

        ! return value of this <function>
        type(rect2d64) :: cd

        cd = rect2d64(- arg%x, - arg%y)

    end function minus64

    pure function minus128 (arg) result(cd)

        ! arguments for this <function>
        type(rect2d128), intent(in) :: arg

        ! return value of this <function>
        type(rect2d128) :: cd

        cd = rect2d128(- arg%x, - arg%y)

    end function minus128



    pure function add32 (lhs, rhs) result(cd)

        ! arguments for this <function>
        type(rect2d32), intent(in) :: lhs, rhs

        ! return value of this <function>
        type(rect2d32) :: cd

        cd = rect2d32(lhs%x + rhs%x, lhs%y + rhs%y)

    end function add32

    pure function add64 (lhs, rhs) result(cd)

        ! arguments for this <function>
        type(rect2d64), intent(in) :: lhs, rhs

        ! return value of this <function>
        type(rect2d64) :: cd

        cd = rect2d64(lhs%x + rhs%x, lhs%y + rhs%y)

    end function add64

    pure function add128 (lhs, rhs) result(cd)

        ! arguments for this <function>
        type(rect2d128), intent(in) :: lhs, rhs

        ! return value of this <function>
        type(rect2d128) :: cd

        cd = rect2d128(lhs%x + rhs%x, lhs%y + rhs%y)

    end function add128



    pure function subtract32 (lhs, rhs) result(cd)

        ! arguments for this <function>
        type(rect2d32), intent(in) :: lhs, rhs

        ! return value of this <function>
        type(rect2d32) :: cd

        cd = lhs + (- rhs)

    end function subtract32

    pure function subtract64 (lhs, rhs) result(cd)

        ! arguments for this <function>
        type(rect2d64), intent(in) :: lhs, rhs

        ! return value of this <function>
        type(rect2d64) :: cd

        cd = lhs + (- rhs)

    end function subtract64

    pure function subtract128 (lhs, rhs) result(cd)

        ! arguments for this <function>
        type(rect2d128), intent(in) :: lhs, rhs

        ! return value of this <function>
        type(rect2d128) :: cd

        cd = lhs + (- rhs)

    end function subtract128



    pure function product_cs32 (s, c) result(cd)

        ! arguments for this <function>
        real(REAL32),   intent(in) :: s
        type(rect2d32), intent(in) :: c

        ! return value of this <function>
        type(rect2d32) :: cd

        cd = rect2d32(s * c%x, s * c%y)

    end function product_cs32

    pure function product_cs64 (s, c) result(cd)

        ! arguments for this <function>
        real(REAL64),   intent(in) :: s
        type(rect2d64), intent(in) :: c

        ! return value of this <function>
        type(rect2d64) :: cd

        cd = rect2d64(s * c%x, s * c%y)

    end function product_cs64

    pure function product_cs128 (s, c) result(cd)

        ! arguments for this <function>
        real(REAL128),   intent(in) :: s
        type(rect2d128), intent(in) :: c

        ! return value of this <function>
        type(rect2d128) :: cd

        cd = rect2d128(s * c%x, s * c%y)

    end function product_cs128



    pure function product_sc32 (c, s) result(cd)

        ! arguments for this <function>
        type(rect2d32), intent(in) :: c
        real(REAL32),   intent(in) :: s

        ! return value of this <function>
        type(rect2d32) :: cd

        cd = rect2d32(c%x * s, c%y * s)

    end function product_sc32

    pure function product_sc64 (c, s) result(cd)

        ! arguments for this <function>
        type(rect2d64), intent(in) :: c
        real(REAL64),   intent(in) :: s

        ! return value of this <function>
        type(rect2d64) :: cd

        cd = rect2d64(c%x * s, c%y * s)

    end function product_sc64

    pure function product_sc128 (c, s) result(cd)

        ! arguments for this <function>
        type(rect2d128), intent(in) :: c
        real(REAL128),   intent(in) :: s

        ! return value of this <function>
        type(rect2d128) :: cd

        cd = rect2d128(c%x * s, c%y * s)

    end function product_sc128



    pure function abs2_32 (arg) result(abs2)

        ! arguments for this <function>
        type(rect2d32), intent(in) :: arg

        ! return value of this <function>
        real(REAL32) :: abs2

        abs2 = arg%x * arg%x + arg%y * arg%y

    end function abs2_32

    pure function abs2_64 (arg) result(abs2)

        ! arguments for this <function>
        type(rect2d64), intent(in) :: arg

        ! return value of this <function>
        real(REAL64) :: abs2

        abs2 = arg%x * arg%x + arg%y * arg%y

    end function abs2_64

    pure function abs2_128 (arg) result(abs2)

        ! arguments for this <function>
        type(rect2d128), intent(in) :: arg

        ! return value of this <function>
        real(REAL128) :: abs2

        abs2 = arg%x * arg%x + arg%y * arg%y

    end function abs2_128



    pure function abs32 (arg) result(abs)

        ! arguments for this <function>
        type(rect2d32), intent(in) :: arg

        ! return value of this <function>
        real(REAL32) :: abs

        abs = sqrt( abs2(arg) )

    end function abs32

    pure function abs64 (arg) result(abs)

        ! arguments for this <function>
        type(rect2d64), intent(in) :: arg

        ! return value of this <function>
        real(REAL64) :: abs

        abs = sqrt( abs2(arg) )

    end function abs64

    pure function abs128 (arg) result(abs)

        ! arguments for this <function>
        type(rect2d128), intent(in) :: arg

        ! return value of this <function>
        real(REAL128) :: abs

        abs = sqrt( abs2(arg) )

    end function abs128



    pure subroutine assign_value32 (instance, val)

        ! arguments for this <subroutine>
        type(rect2d32), intent(out) :: instance
        real(REAL32),   intent(in)  :: val

        instance%x = val
        instance%y = val

    end subroutine assign_value32

    pure subroutine assign_value64 (instance, val)

        ! arguments for this <subroutine>
        type(rect2d64), intent(out) :: instance
        real(REAL64),   intent(in)  :: val

        instance%x = val
        instance%y = val

    end subroutine assign_value64

    pure subroutine assign_value128 (instance, val)

        ! arguments for this <subroutine>
        type(rect2d128), intent(out) :: instance
        real(REAL128),   intent(in)  :: val

        instance%x = val
        instance%y = val

    end subroutine assign_value128



    pure subroutine assign_zero32 (arg)

        ! arguments for this <subroutine>
        type(rect2d32), intent(out) :: arg

        call   assign_value(instance=arg, val= 0.0_REAL32)

    end subroutine assign_zero32

    pure subroutine assign_zero64 (arg)

        ! arguments for this <subroutine>
        type(rect2d64), intent(out) :: arg

        call   assign_value(instance=arg, val= 0.0_REAL64)

    end subroutine assign_zero64

    pure subroutine assign_zero128 (arg)

        ! arguments for this <subroutine>
        type(rect2d128), intent(out) :: arg

        call   assign_value(instance=arg, val= 0.0_REAL128)

    end subroutine assign_zero128

end module module_coordinate_rect2d

! ==================================================================================================================================
! EOF
