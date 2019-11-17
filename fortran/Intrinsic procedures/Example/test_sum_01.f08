program test_sum

  ! <module>s to import
  use, intrinsic :: iso_fortran_env
  
   ! require all variables to be explicitly declared
  implicit none

  ! constants for this <program>
  integer, parameter :: DimSize = 3

  ! variables for this <program>   
  integer :: testData(DimSize,DimSize)

  ! support variables for this <program>   
  integer :: iterRw, iterCl
  
  do iterRw = 1, DimSize, 1
      testData(iterRw, 1) = iterRw
  end do
  
  do iterCl = 2, DimSize, 1
      testData(:, iterCl) = testData(:, iterCl - 1) + DimSize
  end do

  do iterRw = 1, DimSize, 1
      print *, testData(iterRw,:)
  end do

  print *, sum( array = testData(:,:), dim = 1 )
  print *, sum( array = testData(:,:), dim = 2 )
  
  do iterCl = 1, DimSize, 1
      testData(1, iterCl) = iterCl
  end do
  
  do iterRw = 2, DimSize, 1
      testData(iterRw, :) = testData(iterRw - 1, :) + DimSize
  end do

  do iterRw = 1, DimSize, 1
      print *, testData(iterRw,:)
  end do

  print *, sum( array = testData(:,:), dim = 1 )
  print *, sum( array = testData(:,:), dim = 2 )

end program test_sum

!--- result ---!
! 
!  1           4           7
!  2           5           8
!  3           6           9
! 
!  6          15          24 <- dim = 1
! 12          15          18 <- dim = 2
! 
!  1           2           3
!  4           5           6
!  7           8           9
! 
! 12          15          18 <- dim = 1
!  6          15          24 <- dim = 2
! 

!--- EOF ---!