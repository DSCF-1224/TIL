! ----------------------------------------------------------------------------------------------------------------------------------
! [target]                                                                                                                         !
! test whether the loaded integer is an even/odd number                                                                            !
! ----------------------------------------------------------------------------------------------------------------------------------

module mod_isMultiple

    ! <module>s to import
    use, intrinsic :: iso_fortran_env


    ! require all variables to be explicitly declared
    implicit none


    ! <interface>s for this <module>
    interface isEven_bit
        module procedure :: isEven_bit_08
        module procedure :: isEven_bit_16
        module procedure :: isEven_bit_32
        module procedure :: isEven_bit_64
    end interface isEven_bit

    interface isOdd_bit
        module procedure :: isOdd_bit_08
        module procedure :: isOdd_bit_16
        module procedure :: isOdd_bit_32
        module procedure :: isOdd_bit_64
    end interface isOdd_bit

    interface isEven_mod
        module procedure :: isEven_mod_08
        module procedure :: isEven_mod_16
        module procedure :: isEven_mod_32
        module procedure :: isEven_mod_64
    end interface isEven_mod

    interface isOdd_mod
        module procedure :: isOdd_mod_08
        module procedure :: isOdd_mod_16
        module procedure :: isOdd_mod_32
        module procedure :: isOdd_mod_64
    end interface isOdd_mod


    ! accessibility of the <subroutine>s and <function>s in this <module>
    public  :: isEven_bit
    private :: isEven_bit_08
    private :: isEven_bit_16
    private :: isEven_bit_32
    private :: isEven_bit_64

    public  :: isOdd_bit
    private :: isOdd_bit_08
    private :: isOdd_bit_16
    private :: isOdd_bit_32
    private :: isOdd_bit_64

    public  :: isEven_mod
    private :: isEven_mod_08
    private :: isEven_mod_16
    private :: isEven_mod_32
    private :: isEven_mod_64

    public  :: isOdd_mod
    private :: isOdd_mod_08
    private :: isOdd_mod_16
    private :: isOdd_mod_32
    private :: isOdd_mod_64


    ! contained <subroutine>s and <function>s are below
    contains


    pure function isEven_bit_08 (i) result(stat)

        ! arguments for this <function>
        integer(INT8), intent(in) :: i

        ! return value of this <function>
        logical :: stat

        stat = .not. isOdd_bit(i= i)

    end function isEven_bit_08

    pure function isEven_bit_16 (i) result(stat)

        ! arguments for this <function>
        integer(INT16), intent(in) :: i

        ! return value of this <function>
        logical :: stat

        stat = .not. isOdd_bit(i= i)

    end function isEven_bit_16

    pure function isEven_bit_32 (i) result(stat)

        ! arguments for this <function>
        integer(INT32), intent(in) :: i

        ! return value of this <function>
        logical :: stat

        stat = .not. isOdd_bit(i= i)

    end function isEven_bit_32

    pure function isEven_bit_64 (i) result(stat)

        ! arguments for this <function>
        integer(INT64), intent(in) :: i

        ! return value of this <function>
        logical :: stat

        stat = .not. isOdd_bit(i= i)

    end function isEven_bit_64


    pure function isOdd_bit_08 (i) result(stat)

        ! arguments for this <function>
        integer(INT8), intent(in) :: i

        ! return value of this <function>
        logical :: stat

        stat = btest(i= i, pos=0)

    end function isOdd_bit_08

    pure function isOdd_bit_16 (i) result(stat)

        ! arguments for this <function>
        integer(INT16), intent(in) :: i

        ! return value of this <function>
        logical :: stat

        stat = btest(i= i, pos=0)

    end function isOdd_bit_16

    pure function isOdd_bit_32 (i) result(stat)

        ! arguments for this <function>
        integer(INT32), intent(in) :: i

        ! return value of this <function>
        logical :: stat

        stat = btest(i= i, pos=0)

    end function isOdd_bit_32

    pure function isOdd_bit_64 (i) result(stat)

        ! arguments for this <function>
        integer(INT64), intent(in) :: i

        ! return value of this <function>
        logical :: stat

        stat = btest(i= i, pos=0)

    end function isOdd_bit_64


    pure function isEven_mod_08 (i) result(stat)

        ! arguments for this <function>
        integer(INT8), intent(in) :: i

        ! return value of this <function>
        logical :: stat

        stat = mod(a= i, p=2_INT8) .eq. 0_INT8

    end function isEven_mod_08

    pure function isEven_mod_16 (i) result(stat)

        ! arguments for this <function>
        integer(INT16), intent(in) :: i

        ! return value of this <function>
        logical :: stat

        stat = mod(a= i, p=2_INT16) .eq. 0_INT16

    end function isEven_mod_16

    pure function isEven_mod_32 (i) result(stat)

        ! arguments for this <function>
        integer(INT32), intent(in) :: i

        ! return value of this <function>
        logical :: stat

        stat = mod(a= i, p=2_INT32) .eq. 0_INT32

    end function isEven_mod_32

    pure function isEven_mod_64 (i) result(stat)

        ! arguments for this <function>
        integer(INT64), intent(in) :: i

        ! return value of this <function>
        logical :: stat

        stat = mod(a= i, p=2_INT64) .eq. 0_INT64

    end function isEven_mod_64


    pure function isOdd_mod_08 (i) result(stat)

        ! arguments for this <function>
        integer(INT8), intent(in) :: i

        ! return value of this <function>
        logical :: stat

        stat = .not. isEven_mod(i= i)

    end function isOdd_mod_08

    pure function isOdd_mod_16 (i) result(stat)

        ! arguments for this <function>
        integer(INT16), intent(in) :: i

        ! return value of this <function>
        logical :: stat

        stat = .not. isEven_mod(i= i)

    end function isOdd_mod_16

    pure function isOdd_mod_32 (i) result(stat)

        ! arguments for this <function>
        integer(INT32), intent(in) :: i

        ! return value of this <function>
        logical :: stat

        stat = .not. isEven_mod(i= i)

    end function isOdd_mod_32

    pure function isOdd_mod_64 (i) result(stat)

        ! arguments for this <function>
        integer(INT16), intent(in) :: i

        ! return value of this <function>
        logical :: stat

        stat = .not. isEven_mod(i= i)

    end function isOdd_mod_64


end module mod_isMultiple

! ----------------------------------------------------------------------------------------------------------------------------------
! End of Source Code
! ----------------------------------------------------------------------------------------------------------------------------------