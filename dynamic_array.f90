program dynamic_array
implicit none

! allocate, dynamic array

!rank is 2, but size is unknown

real,dimension(:,:),allocatable :: d_array

integer ::s1,s2
integer ::j1,j2
print *, 'enter the size of array'
read *,s1,s2

!allocate memory

allocate (d_array(s1,s2))

do j1=1,s1
  do j2=1,s2
   d_array(j1,j2)=j1*j2
   print *,'the element d',j1,j2, 'is ',d_array(j1,j2)

  end do

end do

print *,'the array is',d_array
deallocate(d_array)
end program dynamic_array

