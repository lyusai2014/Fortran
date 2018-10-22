
program raman_transverse

implicit none
integer,parameter ::dp=selected_real_kind(20,34)
real(dp),dimension(3) ::carbon_3,carbon_4,x
real(dp),dimension(3) ::phi ! the wavefuntion
integer ::i,j,k
real(dp),dimension(:,:),allocatable ::neighbour
character(len=87) ::aa,bb
character (len=3) ::cc
open(1,file='raman_t.dat')
open(2,file='rxx.dat')
open(3,file='ryy.dat')
open(4,file='rzz.dat')
open(5,file='rxy.dat')
open(6,file='rxz.dat')
open(7,file='ryz.dat')

do i=1,269
    if (mod(i,6)/=2 .and. mod(i,6)/=3 .and. mod(i,6)/=4) then
          read(1,'(a)') aa
    end if
    if (mod(i,6)==2) then
       read (1,'(a,3f18.9)') cc,x(1),x(2),x(3)
             if (x(1)/=0.00 ) then
             write (2,'(a,ES18.2)') 'a1, R_xx',x(1)
             end if
           if (x(2)/=0.00 ) then
             write (5,'(a,ES18.2)') 'a2, R_xy',x(2)
             end if
          if (x(3)/=0.00 ) then
             write (6,'(a,ES18.2)') 'b1, R_xz',x(3)
             end if

  end if
  if (mod(i,6)==3) then
       read (1,'(a,3f18.9)') cc,x(1),x(2),x(3)
             if (x(2)/=0.00 ) then
             write (3,'(a,ES18.2)') 'a1, R_yy',x(2)
             end if
            if (x(3)/=0.00 ) then
             write (7,'(a,ES18.2)') 'b2, R_yz',x(3)
             end if

  end if
 if (mod(i,6)==4) then
       read (1,'(a,3f18.9)') cc,x(1),x(2),x(3)
             if (x(3)/=0.00 ) then
             write (4,'(a,ES18.2)') 'a1, R_zz',x(3)
             end if
  end if


end do
close(1)
close(2)
close(3)
close(4)
close(5)
close(6)
close(7)












end program raman_transverse
