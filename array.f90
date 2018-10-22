program array
implicit none

! this is to practice array

!declare array

real,dimension(5) :: numbers
! to creat a 5*5 2D array
integer, dimension(5:5) :: matrix
integer ::i
! assign values

do i=1,5
  numbers(i)=i**2

end do 
print *,numbers

end program array
