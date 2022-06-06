create or replace trigger new_college_unique_check before insert on college for each row declare
cursor c_col is select * from college; begin
for i in c_col loop
if :new.email=i.email then
raise_application_error(-20001, 'Email already exists!'); end if;
end loop; end;
/
