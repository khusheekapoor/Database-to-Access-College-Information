create or replace function check_password_student(id in varchar2) return varchar2 as correct_pwd student.password%type;
begin
select password into correct_pwd from student where student_id=id; return(correct_pwd);
end;
/

create or replace procedure student_login(id in varchar2, password in varchar2) as correct_pwd student.password%type;
cursor c_stud is select student_id from student; counter number := 0;
begin
for i in c_stud loop
if i.student_id=id then counter := counter+1; end if; end loop;
if counter=0 then
raise_application_error(-20001, 'No such student exists'); else
correct_pwd := check_password_student(id); if password=correct_pwd then dbms_output.put_line('Login Successful'); else
dbms_output.put_line('Password Incorrect'); end if; end if;
end;
/
