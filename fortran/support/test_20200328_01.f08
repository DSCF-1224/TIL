program test_20200328_01

    ! <module>s to import
    use,     intrinsic :: iso_fortran_env
    use, non_intrinsic :: mod_date_and_time


    ! require all variables to be explicitly declared
    implicit none


    ! variables for this <program>
    type(type_date_and_time_all) :: instance_test


    print '(A27,1X,":",1X,I10)', 'year                        ', get_year                        (instance_test)
    print '(A27,1X,":",1X,I10)', 'month                       ', get_month                       (instance_test)
    print '(A27,1X,":",1X,I10)', 'day                         ', get_day                         (instance_test)
    print '(A27,1X,":",1X,I10)', 'minutes difference with UTC ', get_minutes_difference_with_UTC (instance_test)
    print '(A27,1X,":",1X,I10)', 'hour                        ', get_hour                        (instance_test)
    print '(A27,1X,":",1X,I10)', 'minutes                     ', get_minutes                     (instance_test)
    print '(A27,1X,":",1X,I10)', 'seconds                     ', get_seconds                     (instance_test)
    print '(A27,1X,":",1X,I10)', 'milliseconds                ', get_milliseconds                (instance_test)
    print '(A27,1X,":",1X,A10)', 'date                        ', get_date                        (instance_test)
    print '(A27,1X,":",1X,A10)', 'time                        ', get_time                        (instance_test)
    print '(A27,1X,":",1X,A10)', 'zone                        ', get_zone                        (instance_test)


    call date_and_time(instance_test, allow_overwrite= .true.)


    print '("stored",1X,A27,1X,":",2(1X,I10))', 'year                        ', get_stored_year                        (instance_test), get_year                        (instance_test)
    print '("stored",1X,A27,1X,":",2(1X,I10))', 'month                       ', get_stored_month                       (instance_test), get_month                       (instance_test)
    print '("stored",1X,A27,1X,":",2(1X,I10))', 'day                         ', get_stored_day                         (instance_test), get_day                         (instance_test)
    print '("stored",1X,A27,1X,":",2(1X,I10))', 'minutes difference with UTC ', get_stored_minutes_difference_with_UTC (instance_test), get_minutes_difference_with_UTC (instance_test)
    print '("stored",1X,A27,1X,":",2(1X,I10))', 'hour                        ', get_stored_hour                        (instance_test), get_hour                        (instance_test)
    print '("stored",1X,A27,1X,":",2(1X,I10))', 'minutes                     ', get_stored_minutes                     (instance_test), get_minutes                     (instance_test)
    print '("stored",1X,A27,1X,":",2(1X,I10))', 'seconds                     ', get_stored_seconds                     (instance_test), get_seconds                     (instance_test)
    print '("stored",1X,A27,1X,":",2(1X,I10))', 'milliseconds                ', get_stored_milliseconds                (instance_test), get_milliseconds                (instance_test)
    print '("stored",1X,A27,1X,":",2(1X,A10))', 'date                        ', get_stored_date                        (instance_test), get_date                        (instance_test)
    print '("stored",1X,A27,1X,":",2(1X,A10))', 'time                        ', get_stored_time                        (instance_test), get_time                        (instance_test)
    print '("stored",1X,A27,1X,":",2(1X,A10))', 'zone                        ', get_stored_zone                        (instance_test), get_zone                        (instance_test)

end program test_20200328_01