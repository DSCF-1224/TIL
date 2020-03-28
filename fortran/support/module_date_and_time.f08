! ==================================================================================================================================
! [target]
! support to use the intrinsic subroutine `date_and_time`
! [used compiler]
! GNU Fortran (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0
! ==================================================================================================================================

module mod_date_and_time

    ! <module>s to import
    use, intrinsic :: iso_fortran_env


    ! require all variables to be explicitly declared
    implicit none


    ! constants for this <module>
    integer  (INT32)  , parameter, private :: initial_value_int     = huge(initial_value_int)
    integer  (INT32)  , parameter, private :: length_date           =  8
    integer  (INT32)  , parameter, private :: length_time           = 10
    integer  (INT32)  , parameter, private :: length_zone           =  5
    character(len= *) , parameter, private :: initial_value_str     = '#N/A'
    character(len= *) , parameter, private :: name_module_this      = 'mod_date_and_time'
    character(len= *) , parameter, private :: error_msg_not_applied = 'The given instance has not been applied `date_and_time` !'


    ! accessibility of the <subroutine>s and <function>s in this <module>
    public  :: get_stored_year                            ! interface of function
    public  :: get_stored_month                           ! interface of function
    public  :: get_stored_day                             ! interface of function
    public  :: get_stored_minutes_difference_with_UTC     ! interface of function
    public  :: get_stored_hour                            ! interface of function
    public  :: get_stored_minutes                         ! interface of function
    public  :: get_stored_seconds                         ! interface of function
    public  :: get_stored_milliseconds                    ! interface of function
    public  :: get_stored_date                            ! interface of function
    public  :: get_stored_time                            ! interface of function
    public  :: get_stored_zone                            ! interface of function

    public  :: get_year                                   ! interface of (pure) function
    public  :: get_month                                  ! interface of (pure) function
    public  :: get_day                                    ! interface of (pure) function
    public  :: get_minutes_difference_with_UTC            ! interface of (pure) function
    public  :: get_hour                                   ! interface of (pure) function
    public  :: get_minutes                                ! interface of (pure) function
    public  :: get_seconds                                ! interface of (pure) function
    public  :: get_milliseconds                           ! interface of (pure) function
    public  :: get_date                                   ! interface of (pure) function
    public  :: get_time                                   ! interface of (pure) function
    public  :: get_zone                                   ! interface of (pure) function

    public  :: type_date_and_time_all                     ! type
    public  :: type_date_and_time_int                     ! type
    public  :: type_date_and_time_str                     ! type

    private :: get_stored_year_all                        ! function
    private :: get_stored_month_all                       ! function
    private :: get_stored_day_all                         ! function
    private :: get_stored_minutes_difference_with_UTC_all ! function
    private :: get_stored_hour_all                        ! function
    private :: get_stored_minutes_all                     ! function
    private :: get_stored_seconds_all                     ! function
    private :: get_stored_milliseconds_all                ! function
    private :: get_stored_date_all                        ! function
    private :: get_stored_time_all                        ! function
    private :: get_stored_zone_all                        ! function

    private :: get_year_all                               ! (pure) function
    private :: get_month_all                              ! (pure) function
    private :: get_day_all                                ! (pure) function
    private :: get_minutes_difference_with_UTC_all        ! (pure) function
    private :: get_hour_all                               ! (pure) function
    private :: get_minutes_all                            ! (pure) function
    private :: get_seconds_all                            ! (pure) function
    private :: get_milliseconds_all                       ! (pure) function
    private :: get_date_all                               ! (pure) function
    private :: get_time_all                               ! (pure) function
    private :: get_zone_all                               ! (pure) function

    private :: get_stored_year_int                        ! function
    private :: get_stored_month_int                       ! function
    private :: get_stored_day_int                         ! function
    private :: get_stored_minutes_difference_with_UTC_int ! function
    private :: get_stored_hour_int                        ! function
    private :: get_stored_minutes_int                     ! function
    private :: get_stored_seconds_int                     ! function
    private :: get_stored_milliseconds_int                ! function

    private :: get_year_int                               ! (pure) function
    private :: get_month_int                              ! (pure) function
    private :: get_day_int                                ! (pure) function
    private :: get_minutes_difference_with_UTC_int        ! (pure) function
    private :: get_hour_int                               ! (pure) function
    private :: get_minutes_int                            ! (pure) function
    private :: get_seconds_int                            ! (pure) function
    private :: get_milliseconds_int                       ! (pure) function

    private :: get_stored_date_str                        ! function
    private :: get_stored_time_str                        ! function
    private :: get_stored_zone_str                        ! function

    private :: get_date_str                               ! (pure) function
    private :: get_time_str                               ! (pure) function
    private :: get_zone_str                               ! (pure) function

    private :: get_has_called_date_and_time               ! (pure) function
    private :: get_has_called_date_and_time_int           ! (pure) function
    private :: get_has_called_date_and_time_str           ! (pure) function

    private :: generate_message                           ! (pure) function

    private :: call__date_and_time__for_type_all          ! subroutine
    private :: call__date_and_time__for_type_int          ! subroutine
    private :: call__date_and_time__for_type_str          ! subroutine



    ! <type>s for this <module>
    type type_date_and_time_int
        logical        , private :: has_called_date_and_time    = .false.
        integer(INT32) , private :: year                        = initial_value_int
        integer(INT32) , private :: month                       = initial_value_int
        integer(INT32) , private :: day                         = initial_value_int
        integer(INT32) , private :: minutes_difference_with_UTC = initial_value_int
        integer(INT32) , private :: hour                        = initial_value_int
        integer(INT32) , private :: minutes                     = initial_value_int
        integer(INT32) , private :: seconds                     = initial_value_int
        integer(INT32) , private :: milliseconds                = initial_value_int
    end type type_date_and_time_int

    type type_date_and_time_str
        logical                     , private :: has_called_date_and_time = .false.
        character(len= length_date) , private :: date                     = initial_value_str
        character(len= length_time) , private :: time                     = initial_value_str
        character(len= length_zone) , private :: zone                     = initial_value_str
    end type type_date_and_time_str

    type type_date_and_time_all
        type(type_date_and_time_int), private :: int
        type(type_date_and_time_str), private :: str
    end type type_date_and_time_all


    ! <interface>s for this <module>
    interface date_and_time
        module procedure :: call__date_and_time__for_type_all
        module procedure :: call__date_and_time__for_type_int
        module procedure :: call__date_and_time__for_type_str
    end interface date_and_time

    interface get_stored_year
        module procedure :: get_stored_year_all
        module procedure :: get_stored_year_int
    end interface get_stored_year

    interface get_stored_month
        module procedure :: get_stored_month_all
        module procedure :: get_stored_month_int
    end interface get_stored_month

    interface get_stored_day
        module procedure :: get_stored_day_all
        module procedure :: get_stored_day_int
    end interface get_stored_day

    interface get_stored_minutes_difference_with_UTC
        module procedure :: get_stored_minutes_difference_with_UTC_all
        module procedure :: get_stored_minutes_difference_with_UTC_int
    end interface get_stored_minutes_difference_with_UTC

    interface get_stored_hour
        module procedure :: get_stored_hour_all
        module procedure :: get_stored_hour_int
    end interface get_stored_hour

    interface get_stored_minutes
        module procedure :: get_stored_minutes_all
        module procedure :: get_stored_minutes_int
    end interface get_stored_minutes

    interface get_stored_seconds
        module procedure :: get_stored_seconds_all
        module procedure :: get_stored_seconds_int
    end interface get_stored_seconds

    interface get_stored_milliseconds
        module procedure :: get_stored_milliseconds_all
        module procedure :: get_stored_milliseconds_int
    end interface get_stored_milliseconds

    interface get_stored_date
        module procedure :: get_stored_date_all
        module procedure :: get_stored_date_str
    end interface get_stored_date

    interface get_stored_time
        module procedure :: get_stored_time_all
        module procedure :: get_stored_time_str
    end interface get_stored_time

    interface get_stored_zone
        module procedure :: get_stored_zone_all
        module procedure :: get_stored_zone_str
    end interface get_stored_zone

    interface get_has_called_date_and_time
        module procedure :: get_has_called_date_and_time_int
        module procedure :: get_has_called_date_and_time_str
    end interface get_has_called_date_and_time

    interface get_year
        module procedure :: get_year_all
        module procedure :: get_year_int
    end interface get_year

    interface get_month
        module procedure :: get_month_all
        module procedure :: get_month_int
    end interface get_month

    interface get_day
        module procedure :: get_day_all
        module procedure :: get_day_int
    end interface get_day

    interface get_minutes_difference_with_UTC
        module procedure :: get_minutes_difference_with_UTC_all
        module procedure :: get_minutes_difference_with_UTC_int
    end interface get_minutes_difference_with_UTC

    interface get_hour
        module procedure :: get_hour_all
        module procedure :: get_hour_int
    end interface get_hour

    interface get_minutes
        module procedure :: get_minutes_all
        module procedure :: get_minutes_int
    end interface get_minutes

    interface get_seconds
        module procedure :: get_seconds_all
        module procedure :: get_seconds_int
    end interface get_seconds

    interface get_milliseconds
        module procedure :: get_milliseconds_all
        module procedure :: get_milliseconds_int
    end interface get_milliseconds

    interface get_date
        module procedure :: get_date_all
        module procedure :: get_date_str
    end interface get_date

    interface get_time
        module procedure :: get_time_all
        module procedure :: get_time_str
    end interface get_time

    interface get_zone
        module procedure :: get_zone_all
        module procedure :: get_zone_str
    end interface get_zone


    ! contained <subroutine>s and <function>s are below
    contains


    ! contained subroutines are as following


    subroutine call__date_and_time__for_type_all ( instance, allow_overwrite )

        ! arguments for this <subroutine>
        type   (type_date_and_time_all) , intent(inout) :: instance
        logical                         , intent(in)    :: allow_overwrite


        ! STEP.01/03
        ! check whether it is allowed to overwrite the instance
        if (.not. allow_overwrite) then
            write(unit= ERROR_UNIT, fmt='(A)', advance='yes') generate_message('It is not allowed to overwrite the `type_date_and_time_all` instance !')
        end if


        ! STEP.02/03
        ! call intrinsic subroutine <date_and_time>
        call date_and_time( instance= instance%int, allow_overwrite= allow_overwrite )
        call date_and_time( instance= instance%str, allow_overwrite= allow_overwrite )


        ! STEP.03/03
        ! update the flag
        instance%int%has_called_date_and_time = .true.
        instance%str%has_called_date_and_time = .true.


        ! STEP.END
        return

    end subroutine call__date_and_time__for_type_all


    subroutine call__date_and_time__for_type_int ( instance, allow_overwrite )

        ! arguments for this <subroutine>
        type   (type_date_and_time_int) , intent(inout) :: instance
        logical                         , intent(in)    :: allow_overwrite

        ! variables for this <subroutine>
        integer(INT32) :: values(1:8)


        ! STEP.01/04
        ! check the flag
        if ( get_has_called_date_and_time(instance) ) then
            if (.not. allow_overwrite) then
                write(unit= ERROR_UNIT, fmt='(A)', advance='yes') generate_message('It is not allowed to overwrite the `type_date_and_time_int` instance !')
            end if
        end if


        ! STEP.02/04
        ! call intrinsic subroutine <date_and_time>
        call date_and_time( values= values(1:8) )


        ! STEP.03/04
        ! copy the recieved values to the instance
        instance%year                        = values(1)
        instance%month                       = values(2)
        instance%day                         = values(3)
        instance%minutes_difference_with_UTC = values(4)
        instance%hour                        = values(5)
        instance%minutes                     = values(6)
        instance%seconds                     = values(7)
        instance%milliseconds                = values(8)


        ! STEP.04/04
        ! update the flag
        instance%has_called_date_and_time = .true.


        ! STEP.END
        return

    end subroutine call__date_and_time__for_type_int


    subroutine call__date_and_time__for_type_str ( instance, allow_overwrite )

        ! arguments for this <subroutine>
        type   (type_date_and_time_str) , intent(inout) :: instance
        logical                         , intent(in)    :: allow_overwrite


        ! STEP.01/04
        ! check the flag
        if ( get_has_called_date_and_time(instance) ) then
            if (.not. allow_overwrite) then
                write(unit= ERROR_UNIT, fmt='(A)', advance='yes') generate_message('It is not allowed to overwrite the `type_date_and_time_str` instance !')
            end if
        end if

        ! STEP.01/02
        ! call intrinsic subroutine <date_and_time>
        call date_and_time( date= instance%date, time= instance%time, zone= instance%zone )

        ! STEP.02/02
        ! update the flag
        instance%has_called_date_and_time = .true.

        ! STEP.END
        return

    end subroutine call__date_and_time__for_type_str


    ! contained functions are as following


    function get_stored_year_all (instance) result(year)

        ! arguments for this <function>
        type(type_date_and_time_all), intent(in) :: instance

        ! return value of this <function>
        integer(INT32) :: year
        
        year = get_stored_year(instance%int)

    end function get_stored_year_all


    function get_stored_month_all (instance) result(month)

        ! arguments for this <function>
        type(type_date_and_time_all), intent(in) :: instance

        ! return value of this <function>
        integer(INT32) :: month
        
        month = get_stored_month(instance%int)

    end function get_stored_month_all


    function get_stored_day_all (instance) result(day)

        ! arguments for this <function>
        type(type_date_and_time_all), intent(in) :: instance

        ! return value of this <function>
        integer(INT32) :: day
        
        day = get_stored_day(instance%int)

    end function get_stored_day_all


    function get_stored_minutes_difference_with_UTC_all (instance) result(minutes_difference_with_UTC)

        ! arguments for this <function>
        type(type_date_and_time_all), intent(in) :: instance

        ! return value of this <function>
        integer(INT32) :: minutes_difference_with_UTC
        
        minutes_difference_with_UTC = get_stored_minutes_difference_with_UTC(instance%int)

    end function get_stored_minutes_difference_with_UTC_all


    function get_stored_hour_all (instance) result(hour)

        ! arguments for this <function>
        type(type_date_and_time_all), intent(in) :: instance

        ! return value of this <function>
        integer(INT32) :: hour
        
        hour = get_stored_hour(instance%int)

    end function get_stored_hour_all


    function get_stored_minutes_all (instance) result(minutes)

        ! arguments for this <function>
        type(type_date_and_time_all), intent(in) :: instance

        ! return value of this <function>
        integer(INT32) :: minutes
        
        minutes = get_stored_minutes(instance%int)

    end function get_stored_minutes_all


    function get_stored_seconds_all (instance) result(seconds)

        ! arguments for this <function>
        type(type_date_and_time_all), intent(in) :: instance

        ! return value of this <function>
        integer(INT32) :: seconds
        
        seconds = get_stored_seconds(instance%int)

    end function get_stored_seconds_all


    function get_stored_milliseconds_all (instance) result(milliseconds)

        ! arguments for this <function>
        type(type_date_and_time_all), intent(in) :: instance

        ! return value of this <function>
        integer(INT32) :: milliseconds
        
        milliseconds = get_stored_milliseconds(instance%int)

    end function get_stored_milliseconds_all


    function get_stored_date_all (instance) result(date)

        ! arguments for this <function>
        type(type_date_and_time_all), intent(in) :: instance

        ! return value of this <function>
        character(len= length_date) :: date
        
        date = get_stored_date(instance%str)

    end function get_stored_date_all


    function get_stored_time_all (instance) result(time)

        ! arguments for this <function>
        type(type_date_and_time_all), intent(in) :: instance

        ! return value of this <function>
        character(len= length_time) :: time
        
        time = get_stored_time(instance%str)

    end function get_stored_time_all


    function get_stored_zone_all (instance) result(zone)

        ! arguments for this <function>
        type(type_date_and_time_all), intent(in) :: instance

        ! return value of this <function>
        character(len= length_zone) :: zone
        
        zone = get_stored_zone(instance%str)

    end function get_stored_zone_all


    function get_stored_year_int (instance) result(year)

        ! arguments for this <function>
        type(type_date_and_time_int), intent(in) :: instance

        ! return value of this <function>
        integer(INT32) :: year

        ! STEP.01/01
        ! check the flag
        if ( get_has_called_date_and_time(instance) ) then
            year = get_year(instance)
        else
            write(unit= ERROR_UNIT, fmt='(A)', advance='yes') generate_message(error_msg_not_applied)
            stop
        end if

        return

    end function get_stored_year_int


    function get_stored_month_int (instance) result(month)

        ! arguments for this <function>
        type(type_date_and_time_int), intent(in) :: instance

        ! return value of this <function>
        integer(INT32) :: month

        ! STEP.01/01
        ! check the flag
        if ( get_has_called_date_and_time(instance) ) then
            month = get_month(instance)
        else
            write(unit= ERROR_UNIT, fmt='(A)', advance='yes') generate_message(error_msg_not_applied)
            stop
        end if

        return

    end function get_stored_month_int


    function get_stored_day_int (instance) result(day)

        ! arguments for this <function>
        type(type_date_and_time_int), intent(in) :: instance

        ! return value of this <function>
        integer(INT32) :: day

        ! STEP.01/01
        ! check the flag
        if ( get_has_called_date_and_time(instance) ) then
            day = get_day(instance)
        else
            write(unit= ERROR_UNIT, fmt='(A)', advance='yes') generate_message(error_msg_not_applied)
            stop
        end if

        return

    end function get_stored_day_int


    function get_stored_minutes_difference_with_UTC_int (instance) result(minutes_difference_with_UTC)

        ! arguments for this <function>
        type(type_date_and_time_int), intent(in) :: instance

        ! return value of this <function>
        integer(INT32) :: minutes_difference_with_UTC

        ! STEP.01/01
        ! check the flag
        if ( get_has_called_date_and_time(instance) ) then
            minutes_difference_with_UTC = get_minutes_difference_with_UTC(instance)
        else
            write(unit= ERROR_UNIT, fmt='(A)', advance='yes') generate_message(error_msg_not_applied)
            stop
        end if

        return

    end function get_stored_minutes_difference_with_UTC_int


    function get_stored_hour_int (instance) result(hour)

        ! arguments for this <function>
        type(type_date_and_time_int), intent(in) :: instance

        ! return value of this <function>
        integer(INT32) :: hour

        ! STEP.01/01
        ! check the flag
        if ( get_has_called_date_and_time(instance) ) then
            hour = get_hour(instance)
        else
            write(unit= ERROR_UNIT, fmt='(A)', advance='yes') generate_message(error_msg_not_applied)
            stop
        end if

        return

    end function get_stored_hour_int


    function get_stored_minutes_int (instance) result(minutes)

        ! arguments for this <function>
        type(type_date_and_time_int), intent(in) :: instance

        ! return value of this <function>
        integer(INT32) :: minutes

        ! STEP.01/01
        ! check the flag
        if ( get_has_called_date_and_time(instance) ) then
            minutes = get_minutes(instance)
        else
            write(unit= ERROR_UNIT, fmt='(A)', advance='yes') generate_message(error_msg_not_applied)
            stop
        end if

        return

    end function get_stored_minutes_int


    function get_stored_seconds_int (instance) result(seconds)

        ! arguments for this <function>
        type(type_date_and_time_int), intent(in) :: instance

        ! return value of this <function>
        integer(INT32) :: seconds

        ! STEP.01/01
        ! check the flag
        if ( get_has_called_date_and_time(instance) ) then
            seconds = get_seconds(instance)
        else
            write(unit= ERROR_UNIT, fmt='(A)', advance='yes') generate_message(error_msg_not_applied)
            stop
        end if

        return

    end function get_stored_seconds_int


    function get_stored_milliseconds_int (instance) result(milliseconds)

        ! arguments for this <function>
        type(type_date_and_time_int), intent(in) :: instance

        ! return value of this <function>
        integer(INT32) :: milliseconds

        ! STEP.01/01
        ! check the flag
        if ( get_has_called_date_and_time(instance) ) then
            milliseconds = get_milliseconds(instance)
        else
            write(unit= ERROR_UNIT, fmt='(A)', advance='yes') generate_message(error_msg_not_applied)
            stop
        end if

        return

    end function get_stored_milliseconds_int


    function get_stored_date_str (instance) result(date)

        ! arguments for this <function>
        type(type_date_and_time_str), intent(in) :: instance

        ! return value of this <function>
        character(len= length_date) :: date

        if ( get_has_called_date_and_time(instance) ) then
            date = get_date(instance)
        else
            write(unit= ERROR_UNIT, fmt='(A)', advance='yes') generate_message(error_msg_not_applied)
            stop
        end if

    end function get_stored_date_str


    function get_stored_time_str (instance) result(time)

        ! arguments for this <function>
        type(type_date_and_time_str), intent(in) :: instance

        ! return value of this <function>
        character(len= length_time) :: time

        if ( get_has_called_date_and_time(instance) ) then
            time = get_time(instance)
        else
            write(unit= ERROR_UNIT, fmt='(A)', advance='yes') generate_message(error_msg_not_applied)
            stop
        end if

    end function get_stored_time_str


    function get_stored_zone_str (instance) result(zone)

        ! arguments for this <function>
        type(type_date_and_time_str), intent(in) :: instance

        ! return value of this <function>
        character(len= length_zone) :: zone

        if ( get_has_called_date_and_time(instance) ) then
            zone = get_zone(instance)
        else
            write(unit= ERROR_UNIT, fmt='(A)', advance='yes') generate_message(error_msg_not_applied)
            stop
        end if

    end function get_stored_zone_str


    pure function get_year_all (instance) result(year)

        ! arguments for this <function>
        type(type_date_and_time_all), intent(in) :: instance

        ! return value of this <function>
        integer(INT32) :: year

        year = get_year(instance%int)

    end function get_year_all


    pure function get_month_all (instance) result(month)

        ! arguments for this <function>
        type(type_date_and_time_all), intent(in) :: instance

        ! return value of this <function>
        integer(INT32) :: month

        month = get_month(instance%int)

    end function get_month_all


    pure function get_day_all (instance) result(day)

        ! arguments for this <function>
        type(type_date_and_time_all), intent(in) :: instance

        ! return value of this <function>
        integer(INT32) :: day

        day = get_day(instance%int)

    end function get_day_all


    pure function get_minutes_difference_with_UTC_all (instance) result(minutes_difference_with_UTC)

        ! arguments for this <function>
        type(type_date_and_time_all), intent(in) :: instance

        ! return value of this <function>
        integer(INT32) :: minutes_difference_with_UTC

        minutes_difference_with_UTC = get_minutes_difference_with_UTC(instance%int)

    end function get_minutes_difference_with_UTC_all


    pure function get_hour_all (instance) result(hour)

        ! arguments for this <function>
        type(type_date_and_time_all), intent(in) :: instance

        ! return value of this <function>
        integer(INT32) :: hour

        hour = get_hour(instance%int)

    end function get_hour_all


    pure function get_minutes_all (instance) result(minutes)

        ! arguments for this <function>
        type(type_date_and_time_all), intent(in) :: instance

        ! return value of this <function>
        integer(INT32) :: minutes

        minutes = get_minutes(instance%int)

    end function get_minutes_all


    pure function get_seconds_all (instance) result(seconds)

        ! arguments for this <function>
        type(type_date_and_time_all), intent(in) :: instance

        ! return value of this <function>
        integer(INT32) :: seconds

        seconds = get_seconds(instance%int)

    end function get_seconds_all


    pure function get_milliseconds_all (instance) result(milliseconds)

        ! arguments for this <function>
        type(type_date_and_time_all), intent(in) :: instance

        ! return value of this <function>
        integer(INT32) :: milliseconds

        milliseconds = get_milliseconds(instance%int)
        
    end function get_milliseconds_all


    pure function get_date_all (instance) result(date)

        ! arguments for this <function>
        type(type_date_and_time_all), intent(in) :: instance

        ! return value of this <function>
        character(len= length_date) :: date

        date = get_date(instance%str)

    end function get_date_all


    pure function get_time_all (instance) result(time)

        ! arguments for this <function>
        type(type_date_and_time_all), intent(in) :: instance

        ! return value of this <function>
        character(len= length_time) :: time

        time = get_time(instance%str)

    end function get_time_all


    pure function get_zone_all (instance) result(zone)

        ! arguments for this <function>
        type(type_date_and_time_all), intent(in) :: instance

        ! return value of this <function>
        character(len= length_zone) :: zone

        zone = get_zone(instance%str)

    end function get_zone_all


    pure function get_year_int (instance) result(year)

        ! arguments for this <function>
        type(type_date_and_time_int), intent(in) :: instance

        ! return value of this <function>
        integer(INT32) :: year

        year = instance%year

    end function get_year_int


    pure function get_month_int (instance) result(month)

        ! arguments for this <function>
        type(type_date_and_time_int), intent(in) :: instance

        ! return value of this <function>
        integer(INT32) :: month

        month = instance%month

    end function get_month_int


    pure function get_day_int (instance) result(day)

        ! arguments for this <function>
        type(type_date_and_time_int), intent(in) :: instance

        ! return value of this <function>
        integer(INT32) :: day

        day = instance%day

    end function get_day_int


    pure function get_minutes_difference_with_UTC_int (instance) result(minutes_difference_with_UTC)

        ! arguments for this <function>
        type(type_date_and_time_int), intent(in) :: instance

        ! return value of this <function>
        integer(INT32) :: minutes_difference_with_UTC

        minutes_difference_with_UTC = instance%minutes_difference_with_UTC

    end function get_minutes_difference_with_UTC_int


    pure function get_hour_int (instance) result(hour)

        ! arguments for this <function>
        type(type_date_and_time_int), intent(in) :: instance

        ! return value of this <function>
        integer(INT32) :: hour

        hour = instance%hour

    end function get_hour_int


    pure function get_minutes_int (instance) result(minutes)

        ! arguments for this <function>
        type(type_date_and_time_int), intent(in) :: instance

        ! return value of this <function>
        integer(INT32) :: minutes

        minutes = instance%minutes

    end function get_minutes_int


    pure function get_seconds_int (instance) result(seconds)

        ! arguments for this <function>
        type(type_date_and_time_int), intent(in) :: instance

        ! return value of this <function>
        integer(INT32) :: seconds

        seconds = instance%seconds

    end function get_seconds_int


    pure function get_milliseconds_int (instance) result(milliseconds)

        ! arguments for this <function>
        type(type_date_and_time_int), intent(in) :: instance

        ! return value of this <function>
        integer(INT32) :: milliseconds

        milliseconds = instance%milliseconds

    end function get_milliseconds_int


    pure function get_date_str (instance) result(date)

        ! arguments for this <function>
        type(type_date_and_time_str), intent(in) :: instance

        ! return value of this <function>
        character(len= length_date) :: date

        date = instance%date

    end function get_date_str


    pure function get_time_str (instance) result(time)

        ! arguments for this <function>
        type(type_date_and_time_str), intent(in) :: instance

        ! return value of this <function>
        character(len= length_time) :: time

        time = instance%time

    end function get_time_str


    pure function get_zone_str (instance) result(zone)

        ! arguments for this <function>
        type(type_date_and_time_str), intent(in) :: instance

        ! return value of this <function>
        character(len= length_zone) :: zone

        zone = instance%zone

    end function get_zone_str


    pure function get_has_called_date_and_time_int (instance) result(stat)

        ! arguments for this <function>
        type(type_date_and_time_int), intent(in) :: instance

        ! return value of this <function>
        logical :: stat

        stat = instance%has_called_date_and_time

    end function get_has_called_date_and_time_int


    pure function get_has_called_date_and_time_str (instance) result(stat)

        ! arguments for this <function>
        type(type_date_and_time_str), intent(in) :: instance

        ! return value of this <function>
        logical :: stat

        stat = instance%has_called_date_and_time

    end function get_has_called_date_and_time_str


    pure function generate_message (message) result(generated_message)

        ! arguments for this <function>
        character(len= *), intent(in) :: message

        ! return value of this <function>
        character(:), allocatable :: generated_message

        generated_message = name_module_this // ': ' // message

    end function generate_message


end module mod_date_and_time


! ==================================================================================================================================
! End of the file
! ==================================================================================================================================
