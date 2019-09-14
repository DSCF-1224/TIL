! gcc version 8.1.0 (x86_64-posix-seh-rev0, Built by MinGW-W64 project)

program test_transfer

  ! <module>s to import
  use, intrinsic :: iso_fortran_env

  ! require all variables to be explicitly declared
  implicit none

  print *, "INT8, binary"
  print *, transfer(source = B'10000000', mold = 1_INT8) ! return :  -128
  print *, transfer(source = B'10000001', mold = 1_INT8) ! return :  -127
  print *, transfer(source = B'11111111', mold = 1_INT8) ! return :    -1
  print *, transfer(source = B'00000000', mold = 1_INT8) ! return :     0
  print *, transfer(source = B'00000001', mold = 1_INT8) ! return :     1
  print *, transfer(source = B'01111110', mold = 1_INT8) ! return :   126
  print *, transfer(source = B'01111111', mold = 1_INT8) ! return :   127

  print *, ""
  print *, "INT8, octal"
  print *, transfer(source = O'200', mold = 1_INT8) ! return :  -128
  print *, transfer(source = O'177', mold = 1_INT8) ! return :  -127
  print *, transfer(source = O'777', mold = 1_INT8) ! return :    -1
  print *, transfer(source = O'000', mold = 1_INT8) ! return :     0
  print *, transfer(source = O'001', mold = 1_INT8) ! return :     1
  print *, transfer(source = O'176', mold = 1_INT8) ! return :   126
  print *, transfer(source = O'177', mold = 1_INT8) ! return :   127

  print *, ""
  print *, "INT8, hexadecimal"
  print *, transfer(source = Z'80', mold = 1_INT8) ! return :  -128
  print *, transfer(source = Z'81', mold = 1_INT8) ! return :  -127
  print *, transfer(source = Z'FF', mold = 1_INT8) ! return :    -1
  print *, transfer(source = Z'00', mold = 1_INT8) ! return :     0
  print *, transfer(source = Z'01', mold = 1_INT8) ! return :     1
  print *, transfer(source = Z'7E', mold = 1_INT8) ! return :   126
  print *, transfer(source = Z'7F', mold = 1_INT8) ! return :   127

  print *, ""
  print *, "INT16, binary"
  print *, transfer(source = B'1000000000000000', mold = 1_INT16) ! return : -32768
  print *, transfer(source = B'1000000000000001', mold = 1_INT16) ! return : -32767
  print *, transfer(source = B'1111111111111111', mold = 1_INT16) ! return :     -1
  print *, transfer(source = B'0000000000000000', mold = 1_INT16) ! return :      0
  print *, transfer(source = B'0000000000000001', mold = 1_INT16) ! return :      1
  print *, transfer(source = B'0111111111111110', mold = 1_INT16) ! return :  32766
  print *, transfer(source = B'0111111111111111', mold = 1_INT16) ! return :  32767

  print *, ""
  print *, "INT16, octal"
  print *, transfer(source = O'100000', mold = 1_INT16) ! return : -32768
  print *, transfer(source = O'100001', mold = 1_INT16) ! return : -32767
  print *, transfer(source = O'177777', mold = 1_INT16) ! return :     -1
  print *, transfer(source = O'000000', mold = 1_INT16) ! return :      0
  print *, transfer(source = O'000001', mold = 1_INT16) ! return :      1
  print *, transfer(source = O'077776', mold = 1_INT16) ! return :  32766
  print *, transfer(source = O'077777', mold = 1_INT16) ! return :  32767

  print *, ""
  print *, "INT16, hexadecimal"
  print *, transfer(source = Z'8000', mold = 1_INT16) ! return : -32768
  print *, transfer(source = Z'8001', mold = 1_INT16) ! return : -32767
  print *, transfer(source = Z'FFFF', mold = 1_INT16) ! return :     -1
  print *, transfer(source = Z'0000', mold = 1_INT16) ! return :      0
  print *, transfer(source = Z'0001', mold = 1_INT16) ! return :      1
  print *, transfer(source = Z'7FFE', mold = 1_INT16) ! return :  32766
  print *, transfer(source = Z'7FFF', mold = 1_INT16) ! return :  32767

  print *, ""
  print *, "INT32, binary"
  print *, transfer(source = B'10000000000000000000000000000000', mold = 1_INT32) ! return : -2147483648
  print *, transfer(source = B'10000000000000000000000000000001', mold = 1_INT32) ! return : -2147483647
  print *, transfer(source = B'11111111111111111111111111111111', mold = 1_INT32) ! return :          -1
  print *, transfer(source = B'00000000000000000000000000000000', mold = 1_INT32) ! return :           0
  print *, transfer(source = B'00000000000000000000000000000001', mold = 1_INT32) ! return :           1
  print *, transfer(source = B'01111111111111111111111111111110', mold = 1_INT32) ! return :  2147483646
  print *, transfer(source = B'01111111111111111111111111111111', mold = 1_INT32) ! return :  2147483647

  print *, ""
  print *, "INT32, octal"
  print *, transfer(source = O'20000000000', mold = 1_INT32) ! return : -2147483648
  print *, transfer(source = O'20000000001', mold = 1_INT32) ! return : -2147483647
  print *, transfer(source = O'37777777777', mold = 1_INT32) ! return :          -1
  print *, transfer(source = O'00000000000', mold = 1_INT32) ! return :           0
  print *, transfer(source = O'00000000001', mold = 1_INT32) ! return :           1
  print *, transfer(source = O'17777777776', mold = 1_INT32) ! return :  2147483646
  print *, transfer(source = O'17777777777', mold = 1_INT32) ! return :  2147483647

  print *, ""
  print *, "INT32, hexadecimal"
  print *, transfer(source = Z'80000000', mold = 1_INT32) ! return : -2147483648
  print *, transfer(source = Z'80000001', mold = 1_INT32) ! return : -2147483647
  print *, transfer(source = Z'FFFFFFFF', mold = 1_INT32) ! return :          -1
  print *, transfer(source = Z'00000000', mold = 1_INT32) ! return :           0
  print *, transfer(source = Z'00000001', mold = 1_INT32) ! return :           1
  print *, transfer(source = Z'7FFFFFFE', mold = 1_INT32) ! return :  2147483646
  print *, transfer(source = Z'7FFFFFFF', mold = 1_INT32) ! return :  2147483647

  print *, ""
  print *, "INT64, binary"

  print *, transfer(source = B'1000000000000000000000000000000000000000000000000000000000000000', mold = 1_INT64)  ! return : -9223372036854775808
  print *, transfer(source = B'1000000000000000000000000000000000000000000000000000000000000001', mold = 1_INT64)  ! return : -9223372036854775807
  print *, transfer(source = B'1111111111111111111111111111111111111111111111111111111111111111', mold = 1_INT64)  ! return :                   -1
  print *, transfer(source = B'0000000000000000000000000000000000000000000000000000000000000000', mold = 1_INT64)  ! return :                    0
  print *, transfer(source = B'0000000000000000000000000000000000000000000000000000000000000001', mold = 1_INT64)  ! return :                    1
  print *, transfer(source = B'0111111111111111111111111111111111111111111111111111111111111110', mold = 1_INT64)  ! return :  9223372036854775806
  print *, transfer(source = B'0111111111111111111111111111111111111111111111111111111111111111', mold = 1_INT64)  ! return :  9223372036854775807

  print *, ""
  print *, "INT64, octal"
  print *, transfer(source = O'1000000000000000000000', mold = 1_INT64) ! return : -9223372036854775808
  print *, transfer(source = O'1000000000000000000001', mold = 1_INT64) ! return : -9223372036854775807
  print *, transfer(source = O'1777777777777777777777', mold = 1_INT64) ! return :                   -1
  print *, transfer(source = O'0000000000000000000000', mold = 1_INT64) ! return :                    0
  print *, transfer(source = O'0000000000000000000001', mold = 1_INT64) ! return :                    1
  print *, transfer(source = O'0777777777777777777776', mold = 1_INT64) ! return :  9223372036854775806
  print *, transfer(source = O'0777777777777777777777', mold = 1_INT64) ! return :  9223372036854775807

  print *, ""
  print *, "INT64, hexadecimal"
  print *, transfer(source = Z'8000000000000000', mold = 1_INT64) ! return : -9223372036854775808
  print *, transfer(source = Z'8000000000000001', mold = 1_INT64) ! return : -9223372036854775807
  print *, transfer(source = Z'FFFFFFFFFFFFFFFF', mold = 1_INT64) ! return :                   -1
  print *, transfer(source = Z'0000000000000000', mold = 1_INT64) ! return :                    0
  print *, transfer(source = Z'0000000000000001', mold = 1_INT64) ! return :                    1
  print *, transfer(source = Z'7FFFFFFFFFFFFFFE', mold = 1_INT64) ! return :  9223372036854775806
  print *, transfer(source = Z'7FFFFFFFFFFFFFFF', mold = 1_INT64) ! return :  9223372036854775807

  print *, ""
  print *, "REAL32, binary"
  print *, transfer(source = B'11111111100000000000000000000000', mold = 1.0_REAL32) ! return :        -Infinity
  print *, transfer(source = B'11111111011111111111111111111111', mold = 1.0_REAL32) ! return :  -3.40282347E+38 <- -huge(1.0_REAL32)
  print *, transfer(source = B'10000000000000000000000000000001', mold = 1.0_REAL32) ! return :  -1.40129846E-45
  print *, transfer(source = B'10000000100000000000000000000000', mold = 1.0_REAL32) ! return :  -1.17549435E-38 <- -tiny(1.0_REAL32)
  print *, transfer(source = B'10000000000000000000000000000000', mold = 1.0_REAL32) ! return :  -0.00000000
  print *, transfer(source = B'00000000000000000000000000000000', mold = 1.0_REAL32) ! return :   0.00000000
  print *, transfer(source = B'00000000100000000000000000000000', mold = 1.0_REAL32) ! return :   1.17549435E-38 <-  tiny(1.0_REAL32)
  print *, transfer(source = B'00000000000000000000000000000001', mold = 1.0_REAL32) ! return :   1.40129846E-45
  print *, transfer(source = B'01111111011111111111111111111111', mold = 1.0_REAL32) ! return :   3.40282347E+38 <-  huge(1.0_REAL32)
  print *, transfer(source = B'01111111100000000000000000000000', mold = 1.0_REAL32) ! return :         Infinity

  print *, transfer(source = B'11111111011111111111111111111111', mold = 1.0_REAL32) .eq. -huge(1.0_REAL32) ! return : T
  print *, transfer(source = B'10000000100000000000000000000000', mold = 1.0_REAL32) .eq. -tiny(1.0_REAL32) ! return : T
  print *, transfer(source = B'00000000100000000000000000000000', mold = 1.0_REAL32) .eq.  tiny(1.0_REAL32) ! return : T
  print *, transfer(source = B'01111111011111111111111111111111', mold = 1.0_REAL32) .eq.  huge(1.0_REAL32) ! return : T

  print *, ""
  print *, "REAL32, octal"
  print *, transfer(source = O'37740000000', mold = 1.0_REAL32) ! return :        -Infinity
  print *, transfer(source = O'37737777777', mold = 1.0_REAL32) ! return :  -3.40282347E+38 <- -huge(1.0_REAL32)
  print *, transfer(source = O'20040000000', mold = 1.0_REAL32) ! return :  -1.17549435E-38 <- -tiny(1.0_REAL32)
  print *, transfer(source = O'20000000001', mold = 1.0_REAL32) ! return :  -1.40129846E-45
  print *, transfer(source = O'20000000000', mold = 1.0_REAL32) ! return :  -0.00000000
  print *, transfer(source = O'00000000000', mold = 1.0_REAL32) ! return :   0.00000000
  print *, transfer(source = O'00000000001', mold = 1.0_REAL32) ! return :   1.40129846E-45
  print *, transfer(source = O'00040000000', mold = 1.0_REAL32) ! return :   1.17549435E-38 <-  tiny(1.0_REAL32)
  print *, transfer(source = O'17737777777', mold = 1.0_REAL32) ! return :   3.40282347E+38 <-  huge(1.0_REAL32)
  print *, transfer(source = O'17740000000', mold = 1.0_REAL32) ! return :         Infinity

  print *, ""
  print *, "REAL32, hexadecimal"
  print *, transfer(source = Z'FF800000', mold = 1.0_REAL32) ! return :        -Infinity
  print *, transfer(source = Z'FF7FFFFF', mold = 1.0_REAL32) ! return :  -3.40282347E+38 <- -huge(1.0_REAL32)
  print *, transfer(source = Z'80800000', mold = 1.0_REAL32) ! return :  -1.17549435E-38 <- -tiny(1.0_REAL32)
  print *, transfer(source = Z'80000001', mold = 1.0_REAL32) ! return :  -1.40129846E-45
  print *, transfer(source = Z'80000000', mold = 1.0_REAL32) ! return :  -0.00000000
  print *, transfer(source = Z'00000000', mold = 1.0_REAL32) ! return :   0.00000000
  print *, transfer(source = Z'00000001', mold = 1.0_REAL32) ! return :   1.40129846E-45
  print *, transfer(source = Z'00800000', mold = 1.0_REAL32) ! return :   1.17549435E-38 <-  tiny(1.0_REAL32)
  print *, transfer(source = Z'7F7FFFFF', mold = 1.0_REAL32) ! return :   3.40282347E+38 <-  huge(1.0_REAL32)
  print *, transfer(source = Z'7F800000', mold = 1.0_REAL32) ! return :         Infinity

  print *, ""
  print *, "REAL64, binary"
  print *, transfer(source = B'1111111111110000000000000000000000000000000000000000000000000000', mold = 1.0_REAL64) ! return :                 -Infinity
  print *, transfer(source = B'1111111111101111111111111111111111111111111111111111111111111111', mold = 1.0_REAL64) ! return :  -1.7976931348623157E+308 <- -huge(1.0_REAL64)
  print *, transfer(source = B'1000000000010000000000000000000000000000000000000000000000000000', mold = 1.0_REAL64) ! return :   2.2250738585072014E-308 <- -tiny(1.0_REAL64)
  print *, transfer(source = B'1000000000000000000000000000000000000000000000000000000000000001', mold = 1.0_REAL64) ! return :  -4.9406564584124654E-324
  print *, transfer(source = B'1000000000000000000000000000000000000000000000000000000000000000', mold = 1.0_REAL64) ! return :  -0.0000000000000000
  print *, transfer(source = B'0000000000000000000000000000000000000000000000000000000000000000', mold = 1.0_REAL64) ! return :   0.0000000000000000
  print *, transfer(source = B'0000000000000000000000000000000000000000000000000000000000000001', mold = 1.0_REAL64) ! return :   4.9406564584124654E-324
  print *, transfer(source = B'0000000000010000000000000000000000000000000000000000000000000000', mold = 1.0_REAL64) ! return :   2.2250738585072014E-308 <-  huge(1.0_REAL64)
  print *, transfer(source = B'0111111111101111111111111111111111111111111111111111111111111111', mold = 1.0_REAL64) ! return :   1.7976931348623157E+308 <-  tiny(1.0_REAL64)
  print *, transfer(source = B'0111111111110000000000000000000000000000000000000000000000000000', mold = 1.0_REAL64) ! return :                  Infinity

  print *, ""
  print *, "REAL64, octal"
  print *, transfer(source = O'1777600000000000000000', mold = 1.0_REAL64) ! return :                 -Infinity
  print *, transfer(source = O'1777577777777777777777', mold = 1.0_REAL64) ! return :  -1.7976931348623157E+308 <- -huge(1.0_REAL64)
  print *, transfer(source = O'1000200000000000000000', mold = 1.0_REAL64) ! return :   2.2250738585072014E-308 <- -tiny(1.0_REAL64)
  print *, transfer(source = O'1000000000000000000001', mold = 1.0_REAL64) ! return :  -4.9406564584124654E-324
  print *, transfer(source = O'1000000000000000000000', mold = 1.0_REAL64) ! return :  -0.0000000000000000
  print *, transfer(source = O'0000000000000000000000', mold = 1.0_REAL64) ! return :   0.0000000000000000
  print *, transfer(source = O'0000000000000000000001', mold = 1.0_REAL64) ! return :   4.9406564584124654E-324
  print *, transfer(source = O'0000200000000000000000', mold = 1.0_REAL64) ! return :   2.2250738585072014E-308 <-  huge(1.0_REAL64)
  print *, transfer(source = O'0777577777777777777777', mold = 1.0_REAL64) ! return :   1.7976931348623157E+308 <-  tiny(1.0_REAL64)
  print *, transfer(source = O'0777600000000000000000', mold = 1.0_REAL64) ! return :                  Infinity

  print *, ""
  print *, "REAL64, hexadecimal"
  print *, transfer(source = Z'FFF0000000000000', mold = 1.0_REAL64) ! return :                 -Infinity
  print *, transfer(source = Z'FFEFFFFFFFFFFFFF', mold = 1.0_REAL64) ! return :  -1.7976931348623157E+308 <- -huge(1.0_REAL64)
  print *, transfer(source = Z'8010000000000000', mold = 1.0_REAL64) ! return :   2.2250738585072014E-308 <- -tiny(1.0_REAL64)
  print *, transfer(source = Z'8000000000000001', mold = 1.0_REAL64) ! return :  -4.9406564584124654E-324
  print *, transfer(source = Z'8000000000000000', mold = 1.0_REAL64) ! return :  -0.0000000000000000
  print *, transfer(source = Z'0000000000000000', mold = 1.0_REAL64) ! return :   0.0000000000000000
  print *, transfer(source = Z'0000000000000001', mold = 1.0_REAL64) ! return :   4.9406564584124654E-324
  print *, transfer(source = Z'0010000000000000', mold = 1.0_REAL64) ! return :   2.2250738585072014E-308 <-  huge(1.0_REAL64)
  print *, transfer(source = Z'7FEFFFFFFFFFFFFF', mold = 1.0_REAL64) ! return :   1.7976931348623157E+308 <-  tiny(1.0_REAL64)
  print *, transfer(source = Z'7FF0000000000000', mold = 1.0_REAL64) ! return :                  Infinity

end program test_transfer

! EOF
