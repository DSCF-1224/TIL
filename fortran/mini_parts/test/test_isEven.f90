! ----------------------------------------------------------------------------------------------------------------------------------
! [target]                                                                                                                         !
! test whether the loaded integer is an even/odd number                                                                            !
! ----------------------------------------------------------------------------------------------------------------------------------

program test_isEven
    
    ! <module>s to import
    use,     intrinsic :: iso_fortran_env
    use, non_intrinsic :: mod_isMultiple

    ! constants for this <program>
    integer(INT32), parameter :: num_target = 2 ** 20
    integer(INT32), parameter :: huge_int32 = huge(x=1_INT32)

    ! variables for this <program>
    real   (REAL64) :: buffer_rand
    integer(INT32)  :: target_test
    logical         :: result_all
    logical         :: result_bit
    logical         :: result_mod

    ! STEP.01
    ! test the functions which test whether the given inteager is even or not
    do itr = 1, num_target, 1

        ! STEP.01
        ! generate the target integer
        call random_number(buffer_rand)
        target_test = int(a= huge_int32 * buffer_rand, kind=INT32)

        ! STEP.02
        ! execute the target functions
        result_bit = isEven_bit(i= target_test); result_all = result_bit
        result_mod = isEven_mod(i= target_test); result_all = result_all .eqv. result_mod

        ! STEP.03
        ! show the result
        if (.not. result_all) then

            write(unit=OUTPUT_UNIT, fmt='(A)',     advance='yes') 'A disagreement was detected !'
            write(unit=OUTPUT_UNIT, fmt='(A,I10)', advance='yes') 'target: ', target_test
            write(unit=OUTPUT_UNIT, fmt='(A,L2)',  advance='yes') 'bit   : ', result_bit
            write(unit=OUTPUT_UNIT, fmt='(A,L2)',  advance='yes') 'mod   : ', result_mod

            ! Bad End
            stop

        end if

    end do

    ! STEP.02
    ! true end
    print *, 'No disagreement was detected.'
    
end program test_isEven

! ----------------------------------------------------------------------------------------------------------------------------------
! End of Source Code
! ----------------------------------------------------------------------------------------------------------------------------------
