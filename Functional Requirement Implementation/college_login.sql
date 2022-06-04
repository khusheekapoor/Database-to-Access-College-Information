create or replace function check_password_college(id in varchar2) return varchar2 as correct_pwd college.password%type;
begin
select password into correct_pwd from college where college_id=id; return(correct_pwd);
end;
/

create or replace procedure college_login(id in varchar2, password in varchar2) as correct_pwd college.password%type;
cursor c_col is select college_id from college; counter number := 0;
begin
for i in c_col loop
if i.college_id=id then counter := counter+1; end if; end loop;
if counter=0 then
raise_application_error(-20001, 'No such college exists'); else
correct_pwd := check_password_college(id); if password=correct_pwd then dbms_output.put_line('Login Successful'); else
dbms_output.put_line('Password Incorrect'); end if; end if;
end;
/
