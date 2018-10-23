
program symmetry_finder

implicit none
integer,parameter ::dp=selected_real_kind(20,34)
real(dp),dimension(3) ::carbon_3,carbon_4,x
real(dp),dimension(3) ::phi ! the wavefuntion
integer ::i,j,k
real(dp) ::delta=0.05,delta_z=0.05
!real(dp),dimension(20,5) ::neighbour  
real(dp),dimension(:,:),allocatable ::neighbour


open(1,file='band_fft_k11_b17')
open(2,file='closed_neighbour.dat')
open(3,file='position.dat')
open(4,file='neighbour.dat')
read(3,*) carbon_3(1),carbon_3(2),carbon_3(3)

j=1
do i=1,400000
   read (1,'(5ES17.10)') x(1),x(2),x(3),phi(1),phi(2)
   if (x(1)>carbon_3(1)-delta .and. x(1)<carbon_3(1)+delta ) then
        if (x(2)>carbon_3(2)-delta .and. x(2)<carbon_3(2)+delta ) then
            if (x(3)>carbon_3(3)-delta .and. x(3)<carbon_3(3)+delta ) then
                 j=j+1
            end if
        end if
   end if

end do
close(1)
write(*,*)'j= ',j
open(1,file='band_fft_k11_b17')
allocate(neighbour(j-1,5))
k=1
do i=1,400000
   read (1,'(5ES17.10)') x(1),x(2),x(3),phi(1),phi(2)
   write(2,'(5ES17.10)') x(1),x(2),x(3),phi(1),phi(2)
   if (x(1)>carbon_3(1)-delta .and. x(1)<carbon_3(1)+delta ) then
        if (x(2)>carbon_3(2)-delta .and. x(2)<carbon_3(2)+delta ) then
            if (x(3)>carbon_3(3)-delta .and. x(3)<carbon_3(3)+delta ) then
                neighbour(k,1)=x(1)
                neighbour(k,2)=x(2)
                neighbour(k,3)=x(3)
                neighbour(k,4)=phi(1)
                neighbour(k,5)=phi(2)
                k=k+1
            end if
        end if
   end if
 
end do

do i=1,j-1
    write(4,'(5ES18.10)') &
neighbour(i,1),neighbour(i,2),neighbour(i,3),neighbour(i,4),neighbour(i,5)
end do

deallocate(neighbour)
! calculate the gradient of the wavefuntion




!deallocate(neighbour)
close(1)
close(2)
close(3)
close(4)








end program symmetry_finder
