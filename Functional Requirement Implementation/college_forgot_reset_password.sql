create or replace procedure forgot_password_college_mail(icollege_id in varchar, otp out number) as
v_email college.email%type; begin
select email into v_email from college where college_id=icollege_id; select dbms_random.value(1000, 9999) into otp from dual;
end forgot_password_college_mail;
/
create or replace function otp_check(valid_otp in number, inotp in number) return boolean as
verified boolean; begin
if valid_otp=inotp then verified:=true;
else
verified:=false; end if; return(verified); end otp_check;
/
create or replace procedure reset_password_college(icollege_id in varchar, new_pass in varchar) as
begin
update college set password=new_pass where college_id=icollege_id; 
end;
/ 
declare
otp number; inotp number; otp_ver boolean; begin
forgot_password_college_mail(icollege_id, otp); inotp := &inotp;
otp_ver := otp_check(otp, inotp); if otp_ver=true then
;dbms_output.put_line('Login Successful'); new_pass:='&new_pass'; reset_password_college(icollege_id, new_pass) else
dbms_output.put_line('Incorrect OTP'); end if;
end forgot_password_college;
/
