create or replace trigger college_not_found_ranking before insert or update on ranking for each row
declare
cursor c_col is select college_id from college; counter number := 0;
begin
for i in c_col loop
if i.college_id=:new.college_id then counter := counter+1; end if;
end loop;
if counter=0 then
raise_application_error(-20001, 'No such college exists'); end if;
end;
/
