! gcc version 8.1.0 (x86_64-posix-seh-rev0, Built by MinGW-W64 project)

program test_transfer

  ! <module>s to import
  use, intrinsic :: iso_fortran_env

  ! require all variables to be explicitly declared
  implicit none

  print *, "INT8, binary"
  print *, "B'10000000'", transfer(source = B'10000000', mold = 1_INT8) ! return :  -128
  print *, "B'10000001'", transfer(source = B'10000001', mold = 1_INT8) ! return :  -127
  print *, "B'11111111'", transfer(source = B'11111111', mold = 1_INT8) ! return :    -1
  print *, "B'00000000'", transfer(source = B'00000000', mold = 1_INT8) ! return :     0
  print *, "B'00000001'", transfer(source = B'00000001', mold = 1_INT8) ! return :     1
  print *, "B'01111110'", transfer(source = B'01111110', mold = 1_INT8) ! return :   126
  print *, "B'01111111'", transfer(source = B'01111111', mold = 1_INT8) ! return :   127

  print *, ""
  print *, "INT8, octal"
  print *, "O'200'", transfer(source = O'200', mold = 1_INT8) ! return :  -128
  print *, "O'177'", transfer(source = O'177', mold = 1_INT8) ! return :  -127
  print *, "O'777'", transfer(source = O'777', mold = 1_INT8) ! return :    -1
  print *, "O'000'", transfer(source = O'000', mold = 1_INT8) ! return :     0
  print *, "O'001'", transfer(source = O'001', mold = 1_INT8) ! return :     1
  print *, "O'176'", transfer(source = O'176', mold = 1_INT8) ! return :   126
  print *, "O'177'", transfer(source = O'177', mold = 1_INT8) ! return :   127

  print *, ""
  print *, "INT8, hexadecimal"
  print *, "Z'80'", transfer(source = Z'80', mold = 1_INT8) ! return :  -128
  print *, "Z'81'", transfer(source = Z'81', mold = 1_INT8) ! return :  -127
  print *, "Z'FF'", transfer(source = Z'FF', mold = 1_INT8) ! return :    -1
  print *, "Z'00'", transfer(source = Z'00', mold = 1_INT8) ! return :     0
  print *, "Z'01'", transfer(source = Z'01', mold = 1_INT8) ! return :     1
  print *, "Z'7E'", transfer(source = Z'7E', mold = 1_INT8) ! return :   126
  print *, "Z'7F'", transfer(source = Z'7F', mold = 1_INT8) ! return :   127

  print *, ""
  print *, "INT16, binary"
  print *, "B'1000000000000000'", transfer(source = B'1000000000000000', mold = 1_INT16) ! return : -32768
  print *, "B'1000000000000001'", transfer(source = B'1000000000000001', mold = 1_INT16) ! return : -32767
  print *, "B'1111111111111111'", transfer(source = B'1111111111111111', mold = 1_INT16) ! return :     -1
  print *, "B'0000000000000000'", transfer(source = B'0000000000000000', mold = 1_INT16) ! return :      0
  print *, "B'0000000000000001'", transfer(source = B'0000000000000001', mold = 1_INT16) ! return :      1
  print *, "B'0111111111111110'", transfer(source = B'0111111111111110', mold = 1_INT16) ! return :  32766
  print *, "B'0111111111111111'", transfer(source = B'0111111111111111', mold = 1_INT16) ! return :  32767

  print *, ""
  print *, "INT16, octal"
  print *, "O'100000'", transfer(source = O'100000', mold = 1_INT16) ! return : -32768
  print *, "O'100001'", transfer(source = O'100001', mold = 1_INT16) ! return : -32767
  print *, "O'177777'", transfer(source = O'177777', mold = 1_INT16) ! return :     -1
  print *, "O'000000'", transfer(source = O'000000', mold = 1_INT16) ! return :      0
  print *, "O'000001'", transfer(source = O'000001', mold = 1_INT16) ! return :      1
  print *, "O'077776'", transfer(source = O'077776', mold = 1_INT16) ! return :  32766
  print *, "O'077777'", transfer(source = O'077777', mold = 1_INT16) ! return :  32767

  print *, ""
  print *, "INT16, hexadecimal"
  print *, "Z'8000'", transfer(source = Z'8000', mold = 1_INT16) ! return : -32768
  print *, "Z'8001'", transfer(source = Z'8001', mold = 1_INT16) ! return : -32767
  print *, "Z'FFFF'", transfer(source = Z'FFFF', mold = 1_INT16) ! return :     -1
  print *, "Z'0000'", transfer(source = Z'0000', mold = 1_INT16) ! return :      0
  print *, "Z'0001'", transfer(source = Z'0001', mold = 1_INT16) ! return :      1
  print *, "Z'7FFE'", transfer(source = Z'7FFE', mold = 1_INT16) ! return :  32766
  print *, "Z'7FFF'", transfer(source = Z'7FFF', mold = 1_INT16) ! return :  32767

  print *, ""
  print *, "INT32, binary"
  print *, "B'10000000000000000000000000000000'", transfer(source = B'10000000000000000000000000000000', mold = 1_INT32) ! return : -2147483648
  print *, "B'10000000000000000000000000000001'", transfer(source = B'10000000000000000000000000000001', mold = 1_INT32) ! return : -2147483647
  print *, "B'11111111111111111111111111111111'", transfer(source = B'11111111111111111111111111111111', mold = 1_INT32) ! return :          -1
  print *, "B'00000000000000000000000000000000'", transfer(source = B'00000000000000000000000000000000', mold = 1_INT32) ! return :           0
  print *, "B'00000000000000000000000000000001'", transfer(source = B'00000000000000000000000000000001', mold = 1_INT32) ! return :           1
  print *, "B'01111111111111111111111111111110'", transfer(source = B'01111111111111111111111111111110', mold = 1_INT32) ! return :  2147483646
  print *, "B'01111111111111111111111111111111'", transfer(source = B'01111111111111111111111111111111', mold = 1_INT32) ! return :  2147483647

  print *, ""
  print *, "INT32, octal"
  print *, "O'20000000000'", transfer(source = O'20000000000', mold = 1_INT32) ! return : -2147483648
  print *, "O'20000000001'", transfer(source = O'20000000001', mold = 1_INT32) ! return : -2147483647
  print *, "O'37777777777'", transfer(source = O'37777777777', mold = 1_INT32) ! return :          -1
  print *, "O'00000000000'", transfer(source = O'00000000000', mold = 1_INT32) ! return :           0
  print *, "O'00000000001'", transfer(source = O'00000000001', mold = 1_INT32) ! return :           1
  print *, "O'17777777776'", transfer(source = O'17777777776', mold = 1_INT32) ! return :  2147483646
  print *, "O'17777777777'", transfer(source = O'17777777777', mold = 1_INT32) ! return :  2147483647

  print *, ""
  print *, "INT32, hexadecimal"
  print *, "Z'80000000'", transfer(source = Z'80000000', mold = 1_INT32) ! return : -2147483648
  print *, "Z'80000001'", transfer(source = Z'80000001', mold = 1_INT32) ! return : -2147483647
  print *, "Z'FFFFFFFF'", transfer(source = Z'FFFFFFFF', mold = 1_INT32) ! return :          -1
  print *, "Z'00000000'", transfer(source = Z'00000000', mold = 1_INT32) ! return :           0
  print *, "Z'00000001'", transfer(source = Z'00000001', mold = 1_INT32) ! return :           1
  print *, "Z'7FFFFFFE'", transfer(source = Z'7FFFFFFE', mold = 1_INT32) ! return :  2147483646
  print *, "Z'7FFFFFFF'", transfer(source = Z'7FFFFFFF', mold = 1_INT32) ! return :  2147483647

  print *, ""
  print *, "INT64, binary"

  print *,                  "B'1000000000000000000000000000000000000000000000000000000000000000'",                &!
           transfer(source = B'1000000000000000000000000000000000000000000000000000000000000000', mold = 1_INT64)  ! return : -9223372036854775808

  print *,                  "B'1000000000000000000000000000000000000000000000000000000000000001'",                &!
           transfer(source = B'1000000000000000000000000000000000000000000000000000000000000001', mold = 1_INT64)  ! return : -9223372036854775807

  print *,                  "B'1111111111111111111111111111111111111111111111111111111111111111'",                &!
           transfer(source = B'1111111111111111111111111111111111111111111111111111111111111111', mold = 1_INT64)  ! return :                   -1

  print *,                  "B'0000000000000000000000000000000000000000000000000000000000000000'",                &!
           transfer(source = B'0000000000000000000000000000000000000000000000000000000000000000', mold = 1_INT64)  ! return :                    0

  print *,                  "B'0000000000000000000000000000000000000000000000000000000000000001'",                &!
           transfer(source = B'0000000000000000000000000000000000000000000000000000000000000001', mold = 1_INT64)  ! return :                    1

  print *,                  "B'0111111111111111111111111111111111111111111111111111111111111110'",                &!
           transfer(source = B'0111111111111111111111111111111111111111111111111111111111111110', mold = 1_INT64)  ! return :  9223372036854775806

  print *,                  "B'0111111111111111111111111111111111111111111111111111111111111111'",                &!
           transfer(source = B'0111111111111111111111111111111111111111111111111111111111111111', mold = 1_INT64)  ! return :  9223372036854775807

  print *, ""
  print *, "INT64, octal"
  print *, "O'1000000000000000000000'", transfer(source = O'1000000000000000000000', mold = 1_INT64) ! return : -9223372036854775808
  print *, "O'1000000000000000000001'", transfer(source = O'1000000000000000000001', mold = 1_INT64) ! return : -9223372036854775807
  print *, "O'1777777777777777777777'", transfer(source = O'1777777777777777777777', mold = 1_INT64) ! return :                   -1
  print *, "O'0000000000000000000000'", transfer(source = O'0000000000000000000000', mold = 1_INT64) ! return :                    0
  print *, "O'0000000000000000000001'", transfer(source = O'0000000000000000000001', mold = 1_INT64) ! return :                    1
  print *, "O'0777777777777777777776'", transfer(source = O'0777777777777777777776', mold = 1_INT64) ! return :  9223372036854775806
  print *, "O'0777777777777777777777'", transfer(source = O'0777777777777777777777', mold = 1_INT64) ! return :  9223372036854775807

  print *, ""
  print *, "INT64, hexadecimal"
  print *, "Z'8000000000000000'", transfer(source = Z'8000000000000000', mold = 1_INT64) ! return : -9223372036854775808
  print *, "Z'8000000000000001'", transfer(source = Z'8000000000000001', mold = 1_INT64) ! return : -9223372036854775807
  print *, "Z'FFFFFFFFFFFFFFFF'", transfer(source = Z'FFFFFFFFFFFFFFFF', mold = 1_INT64) ! return :                   -1
  print *, "Z'0000000000000000'", transfer(source = Z'0000000000000000', mold = 1_INT64) ! return :                    0
  print *, "Z'0000000000000001'", transfer(source = Z'0000000000000001', mold = 1_INT64) ! return :                    1
  print *, "Z'7FFFFFFFFFFFFFFE'", transfer(source = Z'7FFFFFFFFFFFFFFE', mold = 1_INT64) ! return :  9223372036854775806
  print *, "Z'7FFFFFFFFFFFFFFF'", transfer(source = Z'7FFFFFFFFFFFFFFF', mold = 1_INT64) ! return :  9223372036854775807

end program test_transfer

! EOF
