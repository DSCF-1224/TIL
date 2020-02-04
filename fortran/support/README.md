# My Support Modules for Fortran #

## 目次 ##

- [module_inverse.f08](#moduleinverse.f08)
- [module_support_system_clock.f08](#modulesupportsystemclock.f08)
  - [type: `typeSysClock`](#type:-typesysclock)
  - [subroutine: `getDataSystemClock`](#subroutine:-getdatasystemclock)
  - [function: `calcElapsedTime`](#function:-calcelapsedtime)

## module_inverse.f08 ##

### interface: `inv` ###

#### 引数 ####

`real(REAL32)`, `real(REAL64)`, `real(REAL128)` 型浮動小数点数 `x` ．

#### 戻し値 ####

引数 `x` と同一の型の浮動小数点数としての `x` の逆数．

#### `module procedure` of this interface ####

|Function        |引数|戻し値|
|:---------------|:-------------:|:-------------:|
|inv_R032_to_R032|`real(REAL32)` |`real(REAL32)` |
|inv_R064_to_R064|`real(REAL64)` |`real(REAL64)` |
|inv_R128_to_R128|`real(REAL128)`|`real(REAL128)`|

## module_support_system_clock.f08 ##

### type: `typeSysClock` ###

|変数名|データ型|アクセス制御|説明|
|:-----------|:---------------|:-------:|:-|
|`count`     |`integer(INT64)`|`private`|組み込み subroutine `system_clock` の戻し値 `count` の格納用変数|
|`count_rate`|`integer(INT64)`|`private`|組み込み subroutine `system_clock` の戻し値 `count_rate` の格納用変数|
|`count_max` |`integer(INT64)`|`private`|組み込み subroutine `system_clock` の戻し値 `count_max` の格納用変数|

### subroutine: `getDataSystemClock` ###

#### 用途 ####

[type: `typeSysClock`](#type:-typesysclock) に組み込み subroutine `system_clock` の戻し値を格納する．

#### 使用方法 ####

`interface` 文を利用して，組み込み subroutine: `system_clock` として呼び出すことができる．

```Fortran
program main

    use, non_intrinsic :: module_support_system_clock

    type(typeSysClock) :: instance

    call system_clock(instance)

end program main
```

### function: `calcElapsedTime` ###

#### 用途 ####

[type: `typeSysClock`](#type:-typesysclock) のインスタンス 2 個より，組み込み subroutine: `system_clock` を用いた実行時間の算出を行う．

#### 引数 ####

|引数名|`intent(*)`|用途
|:-------------|:--:|:-|
|`instance_bgn`|`in`|測定対象時間の始点で `system_clock` に渡した [type: `typeSysClock`](#type:-typesysclock)|
|`instance_end`|`in`|測定対象時間の終点で `system_clock` に渡した [type: `typeSysClock`](#type:-typesysclock)|

#### 戻し値 ####

変数型は `real(REAL64)` です．

### 参考文献 ###

- [Fortran Wiki](http://fortranwiki.org/fortran/show/HomePage)
  - [Intrinsic procedures in Fortran Wiki](http://fortranwiki.org/fortran/show/Intrinsic+procedures)
    - [system_clock in Fortran Wiki](http://fortranwiki.org/fortran/show/system_clock)
- [日本ニューメリカルアルゴリズムズグループ株式会社（日本 NAG）](https://www.nag-j.co.jp/index.htm)
  - [Fortran Tip集](https://www.nag-j.co.jp/fortran/tips/index.html)
    - [移植性のある時間計測の方法](https://www.nag-j.co.jp/fortran/tips/tips_PortableWayToTime.html#_PortableWayToTime)
- [Qiita](https://qiita.com/)
  - [implicit_none](https://qiita.com/implicit_none)
    - [Fortranにおける実行時間の測定](https://qiita.com/implicit_none/items/dd067e9bf5f7b49ce84b)

<!-- EOF -->
