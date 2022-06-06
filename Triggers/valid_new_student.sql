create or replace trigger new_student_unique_check before insert on student for each row declare
cursor c_stud is select * from student; begin
for i in c_stud loop
if :new.email=i.email or :new.phone=i.phone then raise_application_error(-20001, 'Email or Phone already exists!'); end if;
end loop; end;
/
