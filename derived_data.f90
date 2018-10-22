program derived_data_type

implicit none

!type declaration

type books
   character(len=50) ::title
   character(len=50) :: author
   character(len=150) ::subject
   integer :: book_id

end type books

!delcare type variables

type(books) ::book1
type(books) ::book2

!accessing the component of the structure(derived data type)

book1%title='Fortran programing'
book1%author='LIU zaishi'
book1%subject='computer'
book1%book_id=1235

book2%title='Python programing'
book2%author='JIN zhongguo'
book2%subject='computer'
book2%book_id=1236


!display book info

print *, book1%title
print *,book1%author
print *,book1%subject
print *,book1%book_id

print *, book2%title
print *,book2%author
print *,book2%subject
print *,book2%book_id



end program derived_data_type
