create or replace procedure forgot_password_student_mail(istudent_id in varchar, otp out number) as
v_email student.email%type; begin
select email into v_email from student where student_id=istudent_id; select dbms_random.value(1000, 9999) into otp from dual;
end forgot_password_student_mail;
/
create or replace function otp_check(valid_otp in number, inotp in number) return boolean as
verified boolean; begin
if valid_otp=inotp then verified:=true;
else verified:=false;
end if; return(verified); 
end otp_check;
/
create or replace procedure reset_password_student(istudent_id in varchar, new_pass in varchar) as
begin
update student set password=new_pass where student_id=istudent_id; 
end;
/ 
declare
otp number; inotp number; otp_ver boolean;
new_pass varchar(20); begin
forgot_password_student_mail(istudent_id, otp); inotp := &inotp;
otp_ver := otp_check(otp, inotp); if otp_ver=true then
dbms_output.put_line('Login Successful'); new_pass:='&new_pass'; reset_password(istudent_id, new_pass); else
dbms_output.put_line('Incorrect OTP'); end if;
end forgot_password_student;
/
