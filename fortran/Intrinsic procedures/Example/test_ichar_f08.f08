program test_ichar

  ! <module>s to import
  use, intrinsic :: iso_fortran_env

  ! require all variables to be explicitly declared
  implicit none

  ! STEP.01
  print *, ichar(c="a", kind=INT8), kind(x = ichar(c="a", kind=INT8) )
  print *, ichar(c="b", kind=INT8), kind(x = ichar(c="b", kind=INT8) )
  print *, ichar(c="c", kind=INT8), kind(x = ichar(c="c", kind=INT8) )
  print *, ichar(c="d", kind=INT8), kind(x = ichar(c="d", kind=INT8) )
  print *, ichar(c="e", kind=INT8), kind(x = ichar(c="e", kind=INT8) )
  print *, ichar(c="f", kind=INT8), kind(x = ichar(c="f", kind=INT8) )
  print *, ichar(c="g", kind=INT8), kind(x = ichar(c="g", kind=INT8) )
  print *, ichar(c="h", kind=INT8), kind(x = ichar(c="h", kind=INT8) )
  print *, ichar(c="i", kind=INT8), kind(x = ichar(c="i", kind=INT8) )
  print *, ichar(c="j", kind=INT8), kind(x = ichar(c="j", kind=INT8) )
  print *, ichar(c="k", kind=INT8), kind(x = ichar(c="k", kind=INT8) )
  print *, ichar(c="l", kind=INT8), kind(x = ichar(c="l", kind=INT8) )
  print *, ichar(c="m", kind=INT8), kind(x = ichar(c="m", kind=INT8) )
  print *, ichar(c="n", kind=INT8), kind(x = ichar(c="n", kind=INT8) )
  print *, ichar(c="o", kind=INT8), kind(x = ichar(c="o", kind=INT8) )
  print *, ichar(c="p", kind=INT8), kind(x = ichar(c="p", kind=INT8) )
  print *, ichar(c="q", kind=INT8), kind(x = ichar(c="q", kind=INT8) )
  print *, ichar(c="r", kind=INT8), kind(x = ichar(c="r", kind=INT8) )
  print *, ichar(c="s", kind=INT8), kind(x = ichar(c="s", kind=INT8) )
  print *, ichar(c="t", kind=INT8), kind(x = ichar(c="t", kind=INT8) )
  print *, ichar(c="u", kind=INT8), kind(x = ichar(c="u", kind=INT8) )
  print *, ichar(c="v", kind=INT8), kind(x = ichar(c="v", kind=INT8) )
  print *, ichar(c="w", kind=INT8), kind(x = ichar(c="w", kind=INT8) )
  print *, ichar(c="x", kind=INT8), kind(x = ichar(c="x", kind=INT8) )
  print *, ichar(c="y", kind=INT8), kind(x = ichar(c="y", kind=INT8) )
  print *, ichar(c="z", kind=INT8), kind(x = ichar(c="z", kind=INT8) )

end program test_ichar
