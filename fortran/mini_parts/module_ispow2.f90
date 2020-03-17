! ==================================================================================================================================
! * target
!   * test whether the argument is a power of 2
! * reference
!   * https://www.exploringbinary.com/ten-ways-to-check-if-an-integer-is-a-power-of-two-in-c/
! ==================================================================================================================================

module mod_ispow2

    ! <module>s to import
    use,     intrinsic :: iso_fortran_env
    use, non_intrinsic :: mod_isMultiple


    ! require all variables to be explicitly declared
    implicit none


    ! constants for this <module>
    integer(INT8), parameter, private :: set_pow2_positive_08(1:7) &!
        = (/                                                       &!
            transfer(source=Z'01', mold=1_INT8),                   &!
            transfer(source=Z'02', mold=1_INT8),                   &!
            transfer(source=Z'04', mold=1_INT8),                   &!
            transfer(source=Z'08', mold=1_INT8),                   &!
            transfer(source=Z'10', mold=1_INT8),                   &!
            transfer(source=Z'20', mold=1_INT8),                   &!
            transfer(source=Z'40', mold=1_INT8)                    &!
        /)

    integer(INT16), parameter, private :: set_pow2_positive_16(1:15) &!
        = (/                                                         &!
            transfer(source=Z'0001', mold=1_INT16),                  &!
            transfer(source=Z'0002', mold=1_INT16),                  &!
            transfer(source=Z'0004', mold=1_INT16),                  &!
            transfer(source=Z'0008', mold=1_INT16),                  &!
            transfer(source=Z'0010', mold=1_INT16),                  &!
            transfer(source=Z'0020', mold=1_INT16),                  &!
            transfer(source=Z'0040', mold=1_INT16),                  &!
            transfer(source=Z'0080', mold=1_INT16),                  &!
            transfer(source=Z'0100', mold=1_INT16),                  &!
            transfer(source=Z'0200', mold=1_INT16),                  &!
            transfer(source=Z'0400', mold=1_INT16),                  &!
            transfer(source=Z'0800', mold=1_INT16),                  &!
            transfer(source=Z'1000', mold=1_INT16),                  &!
            transfer(source=Z'2000', mold=1_INT16),                  &!
            transfer(source=Z'4000', mold=1_INT16)                   &!
        /)

    integer(INT32), parameter, private :: set_pow2_positive_32(1:31) &!
        = (/                                                         &!
            transfer(source=Z'00000001', mold=1_INT32),              &!
            transfer(source=Z'00000002', mold=1_INT32),              &!
            transfer(source=Z'00000004', mold=1_INT32),              &!
            transfer(source=Z'00000008', mold=1_INT32),              &!
            transfer(source=Z'00000010', mold=1_INT32),              &!
            transfer(source=Z'00000020', mold=1_INT32),              &!
            transfer(source=Z'00000040', mold=1_INT32),              &!
            transfer(source=Z'00000080', mold=1_INT32),              &!
            transfer(source=Z'00000100', mold=1_INT32),              &!
            transfer(source=Z'00000200', mold=1_INT32),              &!
            transfer(source=Z'00000400', mold=1_INT32),              &!
            transfer(source=Z'00000800', mold=1_INT32),              &!
            transfer(source=Z'00001000', mold=1_INT32),              &!
            transfer(source=Z'00002000', mold=1_INT32),              &!
            transfer(source=Z'00004000', mold=1_INT32),              &!
            transfer(source=Z'00008000', mold=1_INT32),              &!
            transfer(source=Z'00010000', mold=1_INT32),              &!
            transfer(source=Z'00020000', mold=1_INT32),              &!
            transfer(source=Z'00040000', mold=1_INT32),              &!
            transfer(source=Z'00080000', mold=1_INT32),              &!
            transfer(source=Z'00100000', mold=1_INT32),              &!
            transfer(source=Z'00200000', mold=1_INT32),              &!
            transfer(source=Z'00400000', mold=1_INT32),              &!
            transfer(source=Z'00800000', mold=1_INT32),              &!
            transfer(source=Z'01000000', mold=1_INT32),              &!
            transfer(source=Z'02000000', mold=1_INT32),              &!
            transfer(source=Z'04000000', mold=1_INT32),              &!
            transfer(source=Z'08000000', mold=1_INT32),              &!
            transfer(source=Z'10000000', mold=1_INT32),              &!
            transfer(source=Z'20000000', mold=1_INT32),              &!
            transfer(source=Z'40000000', mold=1_INT32)               &!
        /)

    integer(INT64), parameter, private :: set_pow2_positive_64(1:63) &!
        = (/                                                         &!
            transfer(source=Z'0000000000000001', mold=1_INT64),      &!
            transfer(source=Z'0000000000000002', mold=1_INT64),      &!
            transfer(source=Z'0000000000000004', mold=1_INT64),      &!
            transfer(source=Z'0000000000000008', mold=1_INT64),      &!
            transfer(source=Z'0000000000000010', mold=1_INT64),      &!
            transfer(source=Z'0000000000000020', mold=1_INT64),      &!
            transfer(source=Z'0000000000000040', mold=1_INT64),      &!
            transfer(source=Z'0000000000000080', mold=1_INT64),      &!
            transfer(source=Z'0000000000000100', mold=1_INT64),      &!
            transfer(source=Z'0000000000000200', mold=1_INT64),      &!
            transfer(source=Z'0000000000000400', mold=1_INT64),      &!
            transfer(source=Z'0000000000000800', mold=1_INT64),      &!
            transfer(source=Z'0000000000001000', mold=1_INT64),      &!
            transfer(source=Z'0000000000002000', mold=1_INT64),      &!
            transfer(source=Z'0000000000004000', mold=1_INT64),      &!
            transfer(source=Z'0000000000008000', mold=1_INT64),      &!
            transfer(source=Z'0000000000010000', mold=1_INT64),      &!
            transfer(source=Z'0000000000020000', mold=1_INT64),      &!
            transfer(source=Z'0000000000040000', mold=1_INT64),      &!
            transfer(source=Z'0000000000080000', mold=1_INT64),      &!
            transfer(source=Z'0000000000100000', mold=1_INT64),      &!
            transfer(source=Z'0000000000200000', mold=1_INT64),      &!
            transfer(source=Z'0000000000400000', mold=1_INT64),      &!
            transfer(source=Z'0000000000800000', mold=1_INT64),      &!
            transfer(source=Z'0000000001000000', mold=1_INT64),      &!
            transfer(source=Z'0000000002000000', mold=1_INT64),      &!
            transfer(source=Z'0000000004000000', mold=1_INT64),      &!
            transfer(source=Z'0000000008000000', mold=1_INT64),      &!
            transfer(source=Z'0000000010000000', mold=1_INT64),      &!
            transfer(source=Z'0000000020000000', mold=1_INT64),      &!
            transfer(source=Z'0000000040000000', mold=1_INT64),      &!
            transfer(source=Z'0000000080000000', mold=1_INT64),      &!
            transfer(source=Z'0000000100000000', mold=1_INT64),      &!
            transfer(source=Z'0000000200000000', mold=1_INT64),      &!
            transfer(source=Z'0000000400000000', mold=1_INT64),      &!
            transfer(source=Z'0000000800000000', mold=1_INT64),      &!
            transfer(source=Z'0000001000000000', mold=1_INT64),      &!
            transfer(source=Z'0000002000000000', mold=1_INT64),      &!
            transfer(source=Z'0000004000000000', mold=1_INT64),      &!
            transfer(source=Z'0000008000000000', mold=1_INT64),      &!
            transfer(source=Z'0000010000000000', mold=1_INT64),      &!
            transfer(source=Z'0000020000000000', mold=1_INT64),      &!
            transfer(source=Z'0000040000000000', mold=1_INT64),      &!
            transfer(source=Z'0000080000000000', mold=1_INT64),      &!
            transfer(source=Z'0000100000000000', mold=1_INT64),      &!
            transfer(source=Z'0000200000000000', mold=1_INT64),      &!
            transfer(source=Z'0000400000000000', mold=1_INT64),      &!
            transfer(source=Z'0000800000000000', mold=1_INT64),      &!
            transfer(source=Z'0001000000000000', mold=1_INT64),      &!
            transfer(source=Z'0002000000000000', mold=1_INT64),      &!
            transfer(source=Z'0004000000000000', mold=1_INT64),      &!
            transfer(source=Z'0008000000000000', mold=1_INT64),      &!
            transfer(source=Z'0010000000000000', mold=1_INT64),      &!
            transfer(source=Z'0020000000000000', mold=1_INT64),      &!
            transfer(source=Z'0040000000000000', mold=1_INT64),      &!
            transfer(source=Z'0080000000000000', mold=1_INT64),      &!
            transfer(source=Z'0100000000000000', mold=1_INT64),      &!
            transfer(source=Z'0200000000000000', mold=1_INT64),      &!
            transfer(source=Z'0400000000000000', mold=1_INT64),      &!
            transfer(source=Z'0800000000000000', mold=1_INT64),      &!
            transfer(source=Z'1000000000000000', mold=1_INT64),      &!
            transfer(source=Z'2000000000000000', mold=1_INT64),      &!
            transfer(source=Z'4000000000000000', mold=1_INT64)       &!
        /)

    integer(INT8),  parameter, private :: minimum_INT8  = - huge(1_INT8 ) - 1_INT8
    integer(INT16), parameter, private :: minimum_INT16 = - huge(1_INT16) - 1_INT16
    integer(INT32), parameter, private :: minimum_INT32 = - huge(1_INT32) - 1_INT32
    integer(INT64), parameter, private :: minimum_INT64 = - huge(1_INT64) - 1_INT64

    ! accessibility of the <subroutine>s and <function>s in this <module>
    public  :: isPow2_DivideByTwo    ! interface
    private :: isPow2_DivideByTwo_08 ! (pure) function
    private :: isPow2_DivideByTwo_16 ! (pure) function
    private :: isPow2_DivideByTwo_32 ! (pure) function
    private :: isPow2_DivideByTwo_64 ! (pure) function

    public  :: isPow2_CheckAll    ! interface
    private :: isPow2_CheckAll_08 ! (pure) function
    private :: isPow2_CheckAll_16 ! (pure) function
    private :: isPow2_CheckAll_32 ! (pure) function
    private :: isPow2_CheckAll_64 ! (pure) function

    public  :: isPow2_CheckNextPow    ! interface
    private :: isPow2_CheckNextPow_08 ! (pure) function
    private :: isPow2_CheckNextPow_16 ! (pure) function
    private :: isPow2_CheckNextPow_32 ! (pure) function
    private :: isPow2_CheckNextPow_64 ! (pure) function

    public  :: isPow2_LinearSearch    ! interface
    private :: isPow2_LinearSearch_08 ! (pure) function
    private :: isPow2_LinearSearch_16 ! (pure) function
    private :: isPow2_LinearSearch_32 ! (pure) function
    private :: isPow2_LinearSearch_64 ! (pure) function

    public  :: isPow2_BinarySearch    ! interface
    private :: isPow2_BinarySearch_08 ! (pure) function
    private :: isPow2_BinarySearch_16 ! (pure) function
    private :: isPow2_BinarySearch_32 ! (pure) function
    private :: isPow2_BinarySearch_64 ! (pure) function

    public  :: isPow2_LogSearch    ! interface
    private :: isPow2_LogSearch_08 ! (pure) function
    private :: isPow2_LogSearch_16 ! (pure) function
    private :: isPow2_LogSearch_32 ! (pure) function
    private :: isPow2_LogSearch_64 ! (pure) function

    public  :: isPow2_CountBit    ! interface
    private :: isPow2_CountBit_08 ! (pure) function
    private :: isPow2_CountBit_16 ! (pure) function
    private :: isPow2_CountBit_32 ! (pure) function
    private :: isPow2_CountBit_64 ! (pure) function

    public  :: isPow2_ShiftRight    ! interface
    private :: isPow2_ShiftRight_08 ! (pure) function
    private :: isPow2_ShiftRight_16 ! (pure) function
    private :: isPow2_ShiftRight_32 ! (pure) function
    private :: isPow2_ShiftRight_64 ! (pure) function

    public  :: isPow2_Decrement    ! interface
    private :: isPow2_Decrement_08 ! (pure) function
    private :: isPow2_Decrement_16 ! (pure) function
    private :: isPow2_Decrement_32 ! (pure) function
    private :: isPow2_Decrement_64 ! (pure) function

    public  :: isPow2_Complement    ! interface
    private :: isPow2_Complement_08 ! (pure) function
    private :: isPow2_Complement_16 ! (pure) function
    private :: isPow2_Complement_32 ! (pure) function
    private :: isPow2_Complement_64 ! (pure) function

    private :: twice    ! interface
    private :: twice_08 ! (pure) function
    private :: twice_16 ! (pure) function
    private :: twice_32 ! (pure) function
    private :: twice_64 ! (pure) function

    private :: divide_half    ! interface
    private :: divide_half_08 ! (pure) function
    private :: divide_half_16 ! (pure) function
    private :: divide_half_32 ! (pure) function
    private :: divide_half_64 ! (pure) function


    ! <interface>s for this <module>
    interface isPow2_DivideByTwo
        module procedure :: isPow2_DivideByTwo_08
        module procedure :: isPow2_DivideByTwo_16
        module procedure :: isPow2_DivideByTwo_32
        module procedure :: isPow2_DivideByTwo_64
    end interface isPow2_DivideByTwo

    interface isPow2_CheckAll
        module procedure :: isPow2_CheckAll_08
        module procedure :: isPow2_CheckAll_16
        module procedure :: isPow2_CheckAll_32
        module procedure :: isPow2_CheckAll_64
    end interface isPow2_CheckAll

    interface isPow2_CheckNextPow
        module procedure :: isPow2_CheckNextPow_08
        module procedure :: isPow2_CheckNextPow_16
        module procedure :: isPow2_CheckNextPow_32
        module procedure :: isPow2_CheckNextPow_64
    end interface isPow2_CheckNextPow

    interface isPow2_LinearSearch
        module procedure :: isPow2_LinearSearch_08
        module procedure :: isPow2_LinearSearch_16
        module procedure :: isPow2_LinearSearch_32
        module procedure :: isPow2_LinearSearch_64
    end interface isPow2_LinearSearch

    interface isPow2_BinarySearch
        module procedure :: isPow2_BinarySearch_08
        module procedure :: isPow2_BinarySearch_16
        module procedure :: isPow2_BinarySearch_32
        module procedure :: isPow2_BinarySearch_64
    end interface isPow2_BinarySearch

    interface isPow2_LogSearch
        module procedure :: isPow2_LogSearch_08
        module procedure :: isPow2_LogSearch_16
        module procedure :: isPow2_LogSearch_32
        module procedure :: isPow2_LogSearch_64
    end interface isPow2_LogSearch

    interface isPow2_CountBit
        module procedure :: isPow2_CountBit_08
        module procedure :: isPow2_CountBit_16
        module procedure :: isPow2_CountBit_32
        module procedure :: isPow2_CountBit_64
    end interface isPow2_CountBit

    interface isPow2_ShiftRight
        module procedure :: isPow2_ShiftRight_08
        module procedure :: isPow2_ShiftRight_16
        module procedure :: isPow2_ShiftRight_32
        module procedure :: isPow2_ShiftRight_64
    end interface isPow2_ShiftRight

    interface isPow2_Decrement
        module procedure :: isPow2_Decrement_08
        module procedure :: isPow2_Decrement_16
        module procedure :: isPow2_Decrement_32
        module procedure :: isPow2_Decrement_64
    end interface isPow2_Decrement

    interface isPow2_Complement
        module procedure :: isPow2_Complement_08
        module procedure :: isPow2_Complement_16
        module procedure :: isPow2_Complement_32
        module procedure :: isPow2_Complement_64
    end interface isPow2_Complement

    interface twice
        module procedure :: twice_08
        module procedure :: twice_16
        module procedure :: twice_32
        module procedure :: twice_64
    end interface twice

    interface divide_half
        module procedure :: divide_half_08
        module procedure :: divide_half_16
        module procedure :: divide_half_32
        module procedure :: divide_half_64
    end interface divide_half


    ! contained <subroutine>s and <function>s are below
    contains


    ! support: check whether the given integer the minimum value of the corresponding type
    pure function isMinimum_08 (i)

        ! arguments for this <function>
        integer(INT8), intent(in) :: i

        ! return value of this <function>
        logical :: isMinimum_08

        isMinimum_08 = i .eq. minimum_INT8

    end function isMinimum_08


    pure function isMinimum_16 (i)

        ! arguments for this <function>
        integer(INT16), intent(in) :: i

        ! return value of this <function>
        logical :: isMinimum_16

        isMinimum_16 = i .eq. minimum_INT16

    end function isMinimum_16


    pure function isMinimum_32 (i)

        ! arguments for this <function>
        integer(INT32), intent(in) :: i

        ! return value of this <function>
        logical :: isMinimum_32

        isMinimum_32 = i .eq. minimum_INT32

    end function isMinimum_32


    pure function isMinimum_64 (i)

        ! arguments for this <function>
        integer(INT64), intent(in) :: i

        ! return value of this <function>
        logical :: isMinimum_64

        isMinimum_64 = i .eq. minimum_INT64

    end function isMinimum_64


    ! support: twice the given integer
    pure function twice_08 (i)

        ! arguments for this <function>
        integer(INT8), intent(in) :: i

        ! return value of this <function>
        integer(INT8) :: twice_08

        twice_08 = 2_INT8 * i

    end function twice_08


    pure function twice_16 (i)

        ! arguments for this <function>
        integer(INT16), intent(in) :: i

        ! return value of this <function>
        integer(INT16) :: twice_16

        twice_16 = 2_INT16 * i

    end function twice_16


    pure function twice_32 (i)

        ! arguments for this <function>
        integer(INT32), intent(in) :: i

        ! return value of this <function>
        integer(INT32) :: twice_32

        twice_32 = 2_INT32 * i

    end function twice_32


    pure function twice_64 (i)

        ! arguments for this <function>
        integer(INT64), intent(in) :: i

        ! return value of this <function>
        integer(INT64) :: twice_64

        twice_64 = 2_INT64 * i

    end function twice_64


    ! support: twice the given integer
    pure function divide_half_08 (i)

        ! arguments for this <function>
        integer(INT8), intent(in) :: i

        ! return value of this <function>
        integer(INT8) :: divide_half_08

        divide_half_08 = i / 2_INT8

    end function divide_half_08


    pure function divide_half_16 (i)

        ! arguments for this <function>
        integer(INT16), intent(in) :: i

        ! return value of this <function>
        integer(INT16) :: divide_half_16

        divide_half_16 = i / 2_INT16

    end function divide_half_16


    pure function divide_half_32 (i)

        ! arguments for this <function>
        integer(INT32), intent(in) :: i

        ! return value of this <function>
        integer(INT32) :: divide_half_32

        divide_half_32 = i / 2_INT32

    end function divide_half_32


    pure function divide_half_64 (i)

        ! arguments for this <function>
        integer(INT64), intent(in) :: i

        ! return value of this <function>
        integer(INT64) :: divide_half_64

        divide_half_64 = i / 2_INT64

    end function divide_half_64


    ! pattern 01
    ! Divide by Two
    pure function isPow2_DivideByTwo_08 (i) result(stat)

        ! arguments for this <function>
        integer(INT8), intent(in) :: i

        ! return value of this <function>
        logical :: stat

        ! variables for this <function>
        integer(INT8) :: i_copied


        ! STEP.01
        ! eliminate a negative integer
        if ( i .le. 0 ) then
            stat = .false.
            return
        end if

        ! STEP.02
        ! copy the argument
        i_copied = i
        
        ! STEP.03
        ! DivideByTwo until either the quotient becomes 1
        do while ( isEven_mod(i_copied) .and. x .gt. 1_INT8 )
            i_copied = divide_half(i_copied)
        end do

        ! STEP.04
        ! test whether the target integer is a power of 2
        stat = i_copied .eq. 1_INT8

        ! STEP.END
        return

    end function isPow2_DivideByTwo_08


    pure function isPow2_DivideByTwo_16 (i) result(stat)

        ! arguments for this <function>
        integer(INT16), intent(in) :: i

        ! return value of this <function>
        logical :: stat

        ! variables for this <function>
        integer(INT16) :: i_copied


        ! STEP.01
        ! eliminate a negative integer
        if ( i .le. 0 ) then
            stat = .false.
            return
        end if

        ! STEP.02
        ! copy the argument
        i_copied = i
        
        ! STEP.03
        ! DivideByTwo until either the quotient becomes 1
        do while ( isEven_mod(i_copied) .and. x .gt. 1_INT16 )
            i_copied = divide_half(i_copied)
        end do

        ! STEP.04
        ! test whether the target integer is a power of 2
        stat = i_copied .eq. 1_INT16

        ! STEP.END
        return

    end function isPow2_DivideByTwo_16


    pure function isPow2_DivideByTwo_32 (i) result(stat)

        ! arguments for this <function>
        integer(INT32), intent(in) :: i

        ! return value of this <function>
        logical :: stat

        ! variables for this <function>
        integer(INT32) :: i_copied


        ! STEP.01
        ! eliminate a negative integer
        if ( i .le. 0 ) then
            stat = .false.
            return
        end if

        ! STEP.02
        ! copy the argument
        i_copied = i
        
        ! STEP.03
        ! DivideByTwo until either the quotient becomes 1
        do while ( isEven_mod(i_copied) .and. x .gt. 1_INT32 )
            i_copied = divide_half(i_copied)
        end do

        ! STEP.04
        ! test whether the target integer is a power of 2
        stat = i_copied .eq. 1_INT32

        ! STEP.END
        return

    end function isPow2_DivideByTwo_32


    pure function isPow2_DivideByTwo_64 (i) result(stat)

        ! arguments for this <function>
        integer(INT64), intent(in) :: i

        ! return value of this <function>
        logical :: stat

        ! variables for this <function>
        integer(INT64) :: i_copied


        ! STEP.01
        ! eliminate a negative integer
        if ( i .le. 0 ) then
            stat = .false.
            return
        end if

        ! STEP.02
        ! copy the argument
        i_copied = i
        
        ! STEP.03
        ! DivideByTwo until either the quotient becomes 1
        do while ( isEven_mod(i_copied) .and. x .gt. 1_INT64 )
            i_copied = divide_half(i_copied)
        end do

        ! STEP.04
        ! test whether the target integer is a power of 2
        stat = i_copied .eq. 1_INT64

        ! STEP.END
        return

    end function isPow2_DivideByTwo_64


    ! pattern 02
    ! Check All
    pure function ispow2_CheckAll_08 (i) result(stat)

        ! arguments for this <function>
        integer(INT8), intent(in) :: i

        ! return value of this <function>
        logical :: stat

        ! variables for this <function>
        integer(INT8) :: i_copied
        integer       :: itr

        ! STEP.01
        ! eliminate a negative integer
        if ( i .le. 0 ) then
            stat = .false.
            return
        end if

        ! STEP.02
        ! initialize the values
        i_copied = abs(i)
        stat     = .false.

        ! STEP.03
        ! test the argument
        do itr = 1, size(set_pow2_positive_08), 1
            stat = stat .or. ( i_copied .eq. set_pow2_positive_08(itr) )
        end do

        ! STEP.END
        return

    end function ispow2_CheckAll_08


    pure function ispow2_CheckAll_16 (i) result(stat)

        ! arguments for this <function>
        integer(INT16), intent(in) :: i

        ! return value of this <function>
        logical :: stat

        ! variables for this <function>
        integer(INT16) :: i_copied
        integer        :: itr

        ! STEP.01
        ! eliminate a negative integer
        if ( i .le. 0 ) then
            stat = .false.
            return
        end if

        ! STEP.02
        ! initialize the values
        i_copied = abs(i)
        stat     = .false.

        ! STEP.03
        ! test the argument
        do itr = 1, size(set_pow2_positive_16), 1
            stat = stat .or. ( i_copied .eq. set_pow2_positive_16(itr) )
        end do

        ! STEP.END
        return

    end function ispow2_CheckAll_16


    pure function ispow2_CheckAll_32 (i) result(stat)

        ! arguments for this <function>
        integer(INT32), intent(in) :: i

        ! return value of this <function>
        logical :: stat

        ! variables for this <function>
        integer(INT32) :: i_copied
        integer        :: itr

        ! STEP.01
        ! eliminate a negative integer
        if ( i .le. 0 ) then
            stat = .false.
            return
        end if

        ! STEP.02
        ! initialize the values
        i_copied = abs(i)
        stat     = .false.

        ! STEP.03
        ! test the argument
        do itr = 1, size(set_pow2_positive_32), 1
            stat = stat .or. ( i_copied .eq. set_pow2_positive_32(itr) )
        end do

        ! STEP.END
        return

    end function ispow2_CheckAll_32


    pure function ispow2_CheckAll_64 (i) result(stat)

        ! arguments for this <function>
        integer(INT64), intent(in) :: i

        ! return value of this <function>
        logical :: stat

        ! variables for this <function>
        integer(INT64) :: i_copied
        integer        :: itr

        ! STEP.01
        ! eliminate a negative integer
        if ( i .le. 0 ) then
            stat = .false.
            return
        end if

        ! STEP.02
        ! initialize the values
        i_copied = abs(i)
        stat     = .false.

        ! STEP.03
        ! test the argument
        do itr = 1, size(set_pow2_positive_64), 1
            stat = stat .or. ( i_copied .eq. set_pow2_positive_64(itr) )
        end do

        ! STEP.END
        return

    end function ispow2_CheckAll_64


    ! pattern 03
    ! Check Next Point
    pure function isPow2_CheckNextPow_08 (i) result(stat)

        ! arguments for this <function>
        integer(INT8), intent(in) :: i

        ! return value of this <function>
        logical :: stat

        ! variables for this <function>
        integer(INT8) :: pow2
        integer(INT8) :: huge_target

        ! STEP.01
        ! eliminate a negative integer
        if ( i .le. 0 ) then
            stat = .false.
            return
        end if

        ! STEP.02
        ! initialize the values
        pow2        = 1_INT8
        huge_target = huge(i)
    
        ! STEP.03
        ! test the argument
        do while ( (pow2 .lt. i) .and. (pow2 .lt. huge_target) )
            pow2 = twice(pow2)
        end do

        stat = (i .eq. pow2)

        ! STEP.END
        return

    end function isPow2_CheckNextPow_08


    pure function isPow2_CheckNextPow_16 (i) result(stat)

        ! arguments for this <function>
        integer(INT16), intent(in) :: i

        ! return value of this <function>
        logical :: stat

        ! variables for this <function>
        integer(INT16) :: pow2
        integer(INT16) :: huge_target

        ! STEP.01
        ! eliminate a negative integer
        if ( i .le. 0 ) then
            stat = .false.
            return
        end if

        ! STEP.02
        ! initialize the values
        pow2        = 1_INT16
        huge_target = huge(i)
    
        ! STEP.03
        ! test the argument
        do while ( (pow2 .lt. i) .and. (pow2 .lt. huge_target) )
            pow2 = twice(pow2)
        end do

        stat = (i .eq. pow2)

        ! STEP.END
        return

    end function isPow2_CheckNextPow_16


    pure function isPow2_CheckNextPow_32 (i) result(stat)

        ! arguments for this <function>
        integer(INT32), intent(in) :: i

        ! return value of this <function>
        logical :: stat

        ! variables for this <function>
        integer(INT32) :: pow2
        integer(INT32) :: huge_target

        ! STEP.01
        ! eliminate a negative integer
        if ( i .le. 0 ) then
            stat = .false.
            return
        end if

        ! STEP.02
        ! initialize the values
        pow2        = 1_INT32
        huge_target = huge(i)
    
        ! STEP.03
        ! test the argument
        do while ( (pow2 .lt. i) .and. (pow2 .lt. huge_target) )
            pow2 = twice(pow2)
        end do

        stat = (i .eq. pow2)

        ! STEP.END
        return

    end function isPow2_CheckNextPow_32


    pure function isPow2_CheckNextPow_64 (i) result(stat)

        ! arguments for this <function>
        integer(INT64), intent(in) :: i

        ! return value of this <function>
        logical :: stat

        ! variables for this <function>
        integer(INT64) :: pow2
        integer(INT64) :: huge_target

        ! STEP.01
        ! eliminate a negative integer
        if ( i .le. 0 ) then
            stat = .false.
            return
        end if

        ! STEP.02
        ! initialize the values
        pow2        = 1_INT64
        huge_target = huge(i)
    
        ! STEP.03
        ! test the argument
        do while ( (pow2 .lt. i) .and. (pow2 .lt. huge_target) )
            pow2 = twice(pow2)
        end do

        stat = (i .eq. pow2)

        ! STEP.END
        return

    end function isPow2_CheckNextPow_64


    ! pattern 04
    ! Linear Search
    pure function isPow2_LinearSearch_08 (i) result(stat)

        ! arguments for this <function>
        integer(INT8), intent(in) :: i

        ! return value of this <function>
        logical :: stat

        ! support variables for this <function>
        integer :: itr, itr_max

        ! STEP.01
        ! eliminate a negative integer
        if ( i .le. 0 ) then
            stat = .false.
            return
        end if

        ! STEP.02
        ! initialize the values
        itr_max = size( set_pow2_positive_08 ) - 1
        itr     = 1

        ! STEP.03
        ! test the argument
        do while ( set_pow2_positive_08(itr) .lt. i .and. itr .lt. itr_max )
            itr = itr + 1
        end do

        stat = ( i .eq. set_pow2_positive_08(itr) )

        return

    end function isPow2_LinearSearch_08


    pure function isPow2_LinearSearch_16 (i) result(stat)

        ! arguments for this <function>
        integer(INT16), intent(in) :: i

        ! return value of this <function>
        logical :: stat

        ! support variables for this <function>
        integer :: itr, itr_max

        ! STEP.01
        ! eliminate a negative integer
        if ( i .le. 0 ) then
            stat = .false.
            return
        end if

        ! STEP.02
        ! initialize the values
        itr_max = size( set_pow2_positive_16 ) - 1
        itr     = 1

        ! STEP.03
        ! test the argument
        do while ( set_pow2_positive_16(itr) .lt. i .and. itr .lt. itr_max )
            itr = itr + 1
        end do

        stat = ( i .eq. set_pow2_positive_16(itr) )

        return

    end function isPow2_LinearSearch_16


    pure function isPow2_LinearSearch_32 (i) result(stat)

        ! arguments for this <function>
        integer(INT32), intent(in) :: i

        ! return value of this <function>
        logical :: stat

        ! support variables for this <function>
        integer :: itr, itr_max

        ! STEP.01
        ! eliminate a negative integer
        if ( i .le. 0 ) then
            stat = .false.
            return
        end if

        ! STEP.02
        ! initialize the values
        itr_max = size( set_pow2_positive_32 ) - 1
        itr     = 1

        ! STEP.03
        ! test the argument
        do while ( set_pow2_positive_32(itr) .lt. i .and. itr .lt. itr_max )
            itr = itr + 1
        end do

        stat = ( i .eq. set_pow2_positive_32(itr) )

        return

    end function isPow2_LinearSearch_32


    pure function isPow2_LinearSearch_64 (i) result(stat)

        ! arguments for this <function>
        integer(INT64), intent(in) :: i

        ! return value of this <function>
        logical :: stat

        ! support variables for this <function>
        integer :: itr, itr_max

        ! STEP.01
        ! eliminate a negative integer
        if ( i .le. 0 ) then
            stat = .false.
            return
        end if

        ! STEP.02
        ! initialize the values
        itr_max = size( set_pow2_positive_64 ) - 1
        itr     = 1

        ! STEP.03
        ! test the argument
        do while ( set_pow2_positive_64(itr) .lt. i .and. itr .lt. itr_max )
            itr = itr + 1
        end do

        stat = ( i .eq. set_pow2_positive_64(itr) )

        return

    end function isPow2_LinearSearch_64


    ! pattern 05
    ! Binary Search
    pure function isPow2_BinarySearch_08 (i) result(stat)

        ! arguments for this <function>
        integer(INT8), intent(in) :: i

        ! return value of this <function>
        logical :: stat
        integer :: interval

        ! variables for this <function>
        integer :: itr


        ! STEP.01
        ! check the special values
        if ( i .le. 0 ) then
            stat = .false.
            return
        end if

        ! STEP.02
        ! initialize the values
        interval = divide_half( size(set_pow2_positive_08) )
        itr      = interval

        ! STEP.03
        ! test the argument
        do while ( i .ne. set_pow2_positive_08(itr) .and. interval .gt. 1 )
            if ( 1_INT8 .lt. set_pow2_positive_08(itr) ) then
                itr = itr - divide_half( interval )
            else
                itr = itr + divide_half( interval )
            end if
        end do

        stat = ( i .eq. set_pow2_positive_08(itr) )

        return

    end function isPow2_BinarySearch_08


    pure function isPow2_BinarySearch_16 (i) result(stat)

        ! arguments for this <function>
        integer(INT16), intent(in) :: i

        ! return value of this <function>
        logical :: stat
        integer :: interval

        ! variables for this <function>
        integer :: itr


        ! STEP.01
        ! check the special values
        if ( i .le. 0 ) then
            stat = .false.
            return
        end if

        ! STEP.02
        ! initialize the values
        interval = divide_half( size(set_pow2_positive_16) )
        itr      = interval

        ! STEP.03
        ! test the argument
        do while ( i .ne. set_pow2_positive_16(itr) .and. interval .gt. 1 )
            if ( 1_INT16 .lt. set_pow2_positive_16(itr) ) then
                itr = itr - divide_half( interval )
            else
                itr = itr + divide_half( interval )
            end if
        end do

        stat = ( i .eq. set_pow2_positive_16(itr) )

        return

    end function isPow2_BinarySearch_16


    pure function isPow2_BinarySearch_32 (i) result(stat)

        ! arguments for this <function>
        integer(INT32), intent(in) :: i

        ! return value of this <function>
        logical :: stat
        integer :: interval

        ! variables for this <function>
        integer :: itr


        ! STEP.01
        ! check the special values
        if ( i .le. 0 ) then
            stat = .false.
            return
        end if

        ! STEP.02
        ! initialize the values
        interval = divide_half( size(set_pow2_positive_32) )
        itr      = interval

        ! STEP.03
        ! test the argument
        do while ( i .ne. set_pow2_positive_32(itr) .and. interval .gt. 1 )
            if ( 1_INT32 .lt. set_pow2_positive_32(itr) ) then
                itr = itr - divide_half( interval )
            else
                itr = itr + divide_half( interval )
            end if
        end do

        stat = ( i .eq. set_pow2_positive_32(itr) )

        return

    end function isPow2_BinarySearch_32


    pure function isPow2_BinarySearch_64 (i) result(stat)

        ! arguments for this <function>
        integer(INT64), intent(in) :: i

        ! return value of this <function>
        logical :: stat
        integer :: interval

        ! variables for this <function>
        integer :: itr


        ! STEP.01
        ! check the special values
        if ( i .le. 0 ) then
            stat = .false.
            return
        end if

        ! STEP.02
        ! initialize the values
        interval = divide_half( size(set_pow2_positive_64) )
        itr      = interval

        ! STEP.03
        ! test the argument
        do while ( i .ne. set_pow2_positive_64(itr) .and. interval .gt. 1 )
            if ( 1_INT64 .lt. set_pow2_positive_64(itr) ) then
                itr = itr - divide_half( interval )
            else
                itr = itr + divide_half( interval )
            end if
        end do

        stat = ( i .eq. set_pow2_positive_64(itr) )

        return

    end function isPow2_BinarySearch_64


    ! pattern 06
    ! Log Search
    pure function isPow2_LogSearch_08 (i) result(stat)

        ! arguments for this <function>
        integer(INT8), intent(in) :: i

        ! return value of this <function>
        logical :: stat

        ! variables for this <function>
        integer :: expornent


        ! STEP.01
        ! check the special values
        if ( i .le. 0 ) then
            stat = .false.
            return
        end if

        ! STEP.02
        ! test the argument
        expornent = int( log(real(i))/log(2.0) )

        stat = ( i .eq. set_pow2_positive_08(expornent) ) .or. ( i .eq. set_pow2_positive_08(expornent + 1) )

        return

    end function isPow2_LogSearch_08


    pure function isPow2_LogSearch_16 (i) result(stat)

        ! arguments for this <function>
        integer(INT16), intent(in) :: i

        ! return value of this <function>
        logical :: stat

        ! variables for this <function>
        integer :: expornent


        ! STEP.01
        ! check the special values
        if ( i .le. 0 ) then
            stat = .false.
            return
        end if

        ! STEP.02
        ! test the argument
        expornent = int( log(real(i))/log(2.0) )

        stat = ( i .eq. set_pow2_positive_16(expornent) ) .or. ( i .eq. set_pow2_positive_16(expornent + 1) )

        return

    end function isPow2_LogSearch_16


    pure function isPow2_LogSearch_32 (i) result(stat)

        ! arguments for this <function>
        integer(INT32), intent(in) :: i

        ! return value of this <function>
        logical :: stat

        ! variables for this <function>
        integer :: expornent


        ! STEP.01
        ! check the special values
        if ( i .le. 0 ) then
            stat = .false.
            return
        end if

        ! STEP.02
        ! test the argument
        expornent = int( log(real(i))/log(2.0) )

        stat = ( i .eq. set_pow2_positive_32(expornent) ) .or. ( i .eq. set_pow2_positive_32(expornent + 1) )

        return

    end function isPow2_LogSearch_32


    pure function isPow2_LogSearch_64 (i) result(stat)

        ! arguments for this <function>
        integer(INT64), intent(in) :: i

        ! return value of this <function>
        logical :: stat

        ! variables for this <function>
        integer :: expornent


        ! STEP.01
        ! check the special values
        if ( i .le. 0 ) then
            stat = .false.
            return
        end if

        ! STEP.02
        ! test the argument
        expornent = int( log(real(i))/log(2.0) )

        stat = ( i .eq. set_pow2_positive_64(expornent) ) .or. ( i .eq. set_pow2_positive_64(expornent + 1) )

        return

    end function isPow2_LogSearch_64


    ! pattern 07
    ! Count Ones
    pure function isPow2_CountBit_08 (i) result(stat)

        ! arguments for this <function>
        integer(INT8), intent(in) :: i

        ! return value of this <function>
        logical :: stat

        ! variables for this <function>
        integer(INT8) :: i_copied
        integer       :: number_bits


        ! STEP.01
        ! check the special values
        if ( i .le. 0 ) then
            stat = .false.
            return
        end if

        ! STEP.02
        ! initialize the value
        number_bits = 0
        i_copied    = i

        ! STEP.03
        ! test the argument
        do while (i_copied .gt. 0 .and. number_bits .ge. 1)

            if ( iand(i_copied, 1_INT8) .eq. 1_INT8 ) number_bits = number_bits + 1
            i_copied = shiftr(i= i_copied, shift=1)

        end do

        stat = (number_bits .eq. 1)

        return

    end function isPow2_CountBit_08


    pure function isPow2_CountBit_16 (i) result(stat)

        ! arguments for this <function>
        integer(INT16), intent(in) :: i

        ! return value of this <function>
        logical :: stat

        ! variables for this <function>
        integer(INT16) :: i_copied
        integer       :: number_bits


        ! STEP.01
        ! check the special values
        if ( i .le. 0 ) then
            stat = .false.
            return
        end if

        ! STEP.02
        ! initialize the value
        number_bits = 0
        i_copied    = i

        ! STEP.03
        ! test the argument
        do while (i_copied .gt. 0 .and. number_bits .ge. 1)

            if ( iand(i_copied, 1_INT16) .eq. 1_INT16 ) number_bits = number_bits + 1
            i_copied = shiftr(i= i_copied, shift=1)

        end do

        stat = (number_bits .eq. 1)

        return

    end function isPow2_CountBit_16


    pure function isPow2_CountBit_32 (i) result(stat)

        ! arguments for this <function>
        integer(INT32), intent(in) :: i

        ! return value of this <function>
        logical :: stat

        ! variables for this <function>
        integer(INT32) :: i_copied
        integer       :: number_bits


        ! STEP.01
        ! check the special values
        if ( i .le. 0 ) then
            stat = .false.
            return
        end if

        ! STEP.02
        ! initialize the value
        number_bits = 0
        i_copied    = i

        ! STEP.03
        ! test the argument
        do while (i_copied .gt. 0 .and. number_bits .ge. 1)

            if ( iand(i_copied, 1_INT32) .eq. 1_INT32 ) number_bits = number_bits + 1
            i_copied = shiftr(i= i_copied, shift=1)

        end do

        stat = (number_bits .eq. 1)

        return

    end function isPow2_CountBit_32


    pure function isPow2_CountBit_64 (i) result(stat)

        ! arguments for this <function>
        integer(INT64), intent(in) :: i

        ! return value of this <function>
        logical :: stat

        ! variables for this <function>
        integer(INT64) :: i_copied
        integer       :: number_bits


        ! STEP.01
        ! check the special values
        if ( i .le. 0 ) then
            stat = .false.
            return
        end if

        ! STEP.02
        ! initialize the value
        number_bits = 0
        i_copied    = i

        ! STEP.03
        ! test the argument
        do while (i_copied .gt. 0 .and. number_bits .ge. 1)

            if ( iand(i_copied, 1_INT64) .eq. 1_INT64 ) number_bits = number_bits + 1
            i_copied = shiftr(i= i_copied, shift=1)

        end do

        stat = (number_bits .eq. 1)

        return

    end function isPow2_CountBit_64


    ! pattern 08
    ! Shift Right
    pure function isPow2_ShiftRight_08 (i) result(stat)

        ! arguments for this <function>
        integer(INT8), intent(in) :: i

        ! return value of this <function>
        logical :: stat

        ! variables for this <function>
        integer(INT8) :: i_copied

        ! STEP.01
        ! copy the argument
        i_copied = i

        ! STEP.02
        ! test the argument
        do while ( iand(i_copied, 1_INT8) .eq. 0 .and. i_copied .gt. 1_INT8 )
            i_copied = shiftr(i= i_copied, shift= 1)
        end do

        stat = i_copied .eq. 1

        ! STEP.END
        return

    end function isPow2_ShiftRight_08


    pure function isPow2_ShiftRight_16 (i) result(stat)

        ! arguments for this <function>
        integer(INT16), intent(in) :: i

        ! return value of this <function>
        logical :: stat

        ! variables for this <function>
        integer(INT16) :: i_copied

        ! STEP.01
        ! copy the argument
        i_copied = i

        ! STEP.02
        ! test the argument
        do while ( iand(i_copied, 1_INT16) .eq. 0 .and. i_copied .gt. 1_INT16 )
            i_copied = shiftr(i= i_copied, shift= 1)
        end do

        stat = i_copied .eq. 1

        ! STEP.END
        return

    end function isPow2_ShiftRight_16


    pure function isPow2_ShiftRight_32 (i) result(stat)

        ! arguments for this <function>
        integer(INT32), intent(in) :: i

        ! return value of this <function>
        logical :: stat

        ! variables for this <function>
        integer(INT32) :: i_copied

        ! STEP.01
        ! copy the argument
        i_copied = i

        ! STEP.02
        ! test the argument
        do while ( iand(i_copied, 1_INT32) .eq. 0 .and. i_copied .gt. 1_INT32 )
            i_copied = shiftr(i= i_copied, shift= 1)
        end do

        stat = i_copied .eq. 1

        ! STEP.END
        return

    end function isPow2_ShiftRight_32


    pure function isPow2_ShiftRight_64 (i) result(stat)

        ! arguments for this <function>
        integer(INT64), intent(in) :: i

        ! return value of this <function>
        logical :: stat

        ! variables for this <function>
        integer(INT64) :: i_copied

        ! STEP.01
        ! copy the argument
        i_copied = i

        ! STEP.02
        ! test the argument
        do while ( iand(i_copied, 1_INT64) .eq. 0 .and. i_copied .gt. 1_INT64 )
            i_copied = shiftr(i= i_copied, shift= 1)
        end do

        stat = i_copied .eq. 1

        ! STEP.END
        return

    end function isPow2_ShiftRight_64


    ! pattern 09
    ! Decrement and Compare
    pure function isPow2_Decrement_08 (i) result(stat)

        ! arguments for this <function>
        integer(INT8), intent(in) :: i

        ! return value of this <function>
        logical :: stat

        ! STEP.01
        ! test the argument
        stat = (i .ne. 0_INT8) .and. ( .not. ( iand(i, i - 1_INT8) .eq. 0_INT8 ) )

        ! STEP.END
        return

    end function isPow2_Decrement_08


    pure function isPow2_Decrement_16 (i) result(stat)

        ! arguments for this <function>
        integer(INT16), intent(in) :: i

        ! return value of this <function>
        logical :: stat

        ! STEP.01
        ! test the argument
        stat = (i .ne. 0_INT16) .and. ( .not. ( iand(i, i - 1_INT16) .eq. 0_INT16 ) )

        ! STEP.END
        return

    end function isPow2_Decrement_16


    pure function isPow2_Decrement_32 (i) result(stat)

        ! arguments for this <function>
        integer(INT32), intent(in) :: i

        ! return value of this <function>
        logical :: stat

        ! STEP.01
        ! test the argument
        stat = (i .ne. 0_INT32) .and. ( .not. ( iand(i, i - 1_INT32) .eq. 0_INT32 ) )

        ! STEP.END
        return

    end function isPow2_Decrement_32


    pure function isPow2_Decrement_64 (i) result(stat)

        ! arguments for this <function>
        integer(INT64), intent(in) :: i

        ! return value of this <function>
        logical :: stat

        ! STEP.01
        ! test the argument
        stat = (i .ne. 0_INT64) .and. ( .not. ( iand(i, i - 1_INT64) .eq. 0_INT64 ) )

        ! STEP.END
        return

    end function isPow2_Decrement_64


    ! pattern 10
    ! Complement and Compare
    pure function isPow2_Complement_08 (i) result(stat)

        ! arguments for this <function>
        integer(INT8), intent(in) :: i

        ! return value of this <function>
        logical :: stat

        ! STEP.01
        ! test the argument
        stat = (i .ne. 0_INT8) .and. ( iand(i, not(i) + 1_INT8) .eq. i )

        ! STEP.END
        return

    end function isPow2_Complement_08


    pure function isPow2_Complement_16 (i) result(stat)

        ! arguments for this <function>
        integer(INT16), intent(in) :: i

        ! return value of this <function>
        logical :: stat

        ! STEP.01
        ! test the argument
        stat = (i .ne. 0_INT16) .and. ( iand(i, not(i) + 1_INT16) .eq. i )

        ! STEP.END
        return

    end function isPow2_Complement_16


    pure function isPow2_Complement_32 (i) result(stat)

        ! arguments for this <function>
        integer(INT32), intent(in) :: i

        ! return value of this <function>
        logical :: stat

        ! STEP.01
        ! test the argument
        stat = (i .ne. 0_INT32) .and. ( iand(i, not(i) + 1_INT32) .eq. i )

        ! STEP.END
        return

    end function isPow2_Complement_32


    pure function isPow2_Complement_64 (i) result(stat)

        ! arguments for this <function>
        integer(INT64), intent(in) :: i

        ! return value of this <function>
        logical :: stat

        ! STEP.01
        ! test the argument
        stat = (i .ne. 0_INT64) .and. ( iand(i, not(i) + 1_INT64) .eq. i )

        ! STEP.END
        return

    end function isPow2_Complement_64

end module mod_ispow2

! ==================================================================================================================================
! EOF
