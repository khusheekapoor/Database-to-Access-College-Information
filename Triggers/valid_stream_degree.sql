create or replace trigger college_stream_not_found_degree before insert on degree for each row
declare
cursor c_col is select college_id from college; cursor c_stream is select stream_id from stream; counter number := 0;
begin
for i in c_col loop
if i.college_id=:new.college_id then counter := counter+1; end if;
end loop;
if counter=0 then
raise_application_error(-20001, 'No such college exists'); end if;
counter:=0;
for i in c_stream loop
if i.stream_id=:new.stream_id then
counter := counter+1; end if; end loop;
if counter=0 then
raise_application_error(-20001, 'No such stream exists'); end if;
end;
/
