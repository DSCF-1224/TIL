# Fortranの組み込み手続き #

## 目次 ##

|手続き名|利用可能な規格|
|:-|:-|
|[`bit_size`](ReadMe/bit_size.md)|Fortran 95 以降|
|[`btest`](ReadMe/btest.md)|Fortran 95 以降|
|[`digits`](ReadMe/digits.md)|Fortran 95 以降|
|[`ichar`](ReadMe/ichar.md)|Fortran 95 以降，引数 `kind` は Fortran 2003 以降|
|[`maxloc`](ReadMe/maxloc.md)|Fortran 95 以降|
|[`open`](ReadMe/open.md)|

## サンプルコード ##

- function `atan2(y, x)`
  - [test_atan2.f08](Example/test_atan2.f08)
- function `digits(x)`
  - [test_digits.f08](Example/test_digits.f08)
- function `huge(x)`
  - [test_huge.f08](Example/test_huge.f08)
- function `ichar(c [, kind])`
  - [test_ichar.f08](Example/test_ichar.f08)
- function `ieee_value(x, class)`
  - [test_ieee_value.f08](Example/test_ieee_value.f08)
- function `ishft(i, shift)`
  - [test_shift.f08](Example/test_shift.f08)
- function `ishftc(i, shift [, size])`
  - [test_shift.f08](Example/test_shift.f08)
- function `leadz(i)`
  - [test_leadz.f08](Example/test_leadz.f08)
- function `shifta(i, shift)`
  - [test_shift.f08](Example/test_shift.f08)
- function `shiftl(i, shift)`
  - [test_shift.f08](Example/test_shift.f08)
- function `shiftr(i, shift)`
  - [test_shift.f08](Example/test_shift.f08)
- function `tiny(x)`
  - [test_tiny.f08](Example/test_tiny.f08)
- function `not(i)`
  - [test_not.f08](Example/test_not.f08)
- function `sum(array, dim[, mask])`
  - [test_sum.f08](Example/test_sum.f08)
- function `transfer(x)`
  - [test_transfer.f08](Example/test_transfer.f08)
  - [test_transfer_pow2.f08](Example/test_transfer_pow2.f08)

<!-- EOF -->
