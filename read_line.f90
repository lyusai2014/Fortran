program read_line
! read specific line

character(len=6) ::a_string
!character(len=200) ::b_string
character, dimension(100)::b_string ! character array
real :: b
integer ::i
open(1,file='f16.in')
   do i=1,3
    ! read(1,*) a_string
   !   read (1,'(a)') a_string
     read(1,*),a_string,b
     print *,a_string,b
     
   end do
close(1)
open(2,file='toptic_1.out')
do i=1,100
read(2,*) b_string(i)

print*,b_string(i)
end do
close(2)



end program read_line
