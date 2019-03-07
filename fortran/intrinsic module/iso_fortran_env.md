# iso_fortran_env #

## 整数型 ##

|kind type parameters|最小値 (10進法)|最大値 (10進法)|
|:-----:|---------------------------------:|----------------------------------:|
|`INT8` |                      -128=-(2^07)|                      +127=(2^07)-1|
|`INT16`|                   -32,768=-(2^15)|                   +32,767=(2^15)-1|
|`INT32`|            -2,147,483,648=-(2^31)|            +2,147,483,647=(2^31)-1|
|`INT64`|-9,223,372,036,854,775,808=-(2^63)|+9,223,372,036,854,775,807=(2^63)-1|

|kind type parameters|桁数|
|:-------:|--:|
|`INT8`   |  3|
|`INT16`  |  5|
|`INT32`  | 10|
|`INT64`  | 19|
|`REAL32` | 24|
|`REAL64` | 53|
|`REAL128`|113|

## 参考文献 ##

* [Fortran Wiki](http://fortranwiki.org/fortran/show/HomePage)
  * [iso_fortran_env](http://fortranwiki.org/fortran/show/iso_fortran_env)