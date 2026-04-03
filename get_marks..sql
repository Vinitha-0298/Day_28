use student;
select*from student_details;

delimiter $$

create function get_marks_( name varchar(50))
returns int deterministic
Begin
   declare marks int;
    Select std_mark INTO marks 
    From student_details 
    Where std_name = name;
   return marks;
End $$

delimiter ;

Select get_marks_('Nithiya') as Marks;
