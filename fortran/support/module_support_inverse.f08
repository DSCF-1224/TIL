! ==================================================================================================================================
! [target]
! to calculate inverse (scalar)
! [used compiler]
! GNU Fortran (Rev2, Built by MSYS2 project) 9.2.0
! ==================================================================================================================================

module module_support_inverse

    ! <module>s to import
    use, intrinsic :: iso_fortran_env

    ! require all variables to be explicitly declared
    implicit none

    ! accessibility of the <subroutine>s and <function>s in this <module>
    public  :: inv              ! interface
    private :: inv_R032_to_R032 ! function
    private :: inv_R064_to_R064 ! function
    private :: inv_R128_to_R128 ! function

    ! <interface>s for this <module>
    interface inv
        module procedure inv_R032_to_R032
        module procedure inv_R064_to_R064
        module procedure inv_R128_to_R128
    end interface inv

    ! contained <subroutine>s and <function>s are below
    contains

    pure function inv_R032_to_R032 (x) result(inv)

        ! arguments for this <function>
        real(REAL32), intent(in) :: x

        ! return value of this <function>
        real(REAL32) :: inv

        inv = 1.0_REAL32 / x

    end function inv_R032_to_R032

    pure function inv_R064_to_R064 (x) result(inv)

        ! arguments for this <function>
        real(REAL64), intent(in) :: x

        ! return value of this <function>
        real(REAL64) :: inv

        inv = 1.0_REAL64 / x

    end function inv_R064_to_R064

    pure function inv_R128_to_R128 (x) result(inv)

        ! arguments for this <function>
        real(REAL128), intent(in) :: x

        ! return value of this <function>
        real(REAL128) :: inv

        inv = 1.0_REAL128 / x

    end function inv_R128_to_R128

    end module module_support_inverse

! ==================================================================================================================================
! End of the file
