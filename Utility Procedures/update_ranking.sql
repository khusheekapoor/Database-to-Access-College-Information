create or replace procedure update_ranking(icollege_id in varchar2, iqs in number, itimes in number, iarwu in number, icwts in number, inirf in number) as
begin
update ranking set qs=iqs where college_id=icollege_id; update ranking set times=itimes where college_id=icollege_id; update ranking set arwu=iarwu where college_id=icollege_id; update ranking set cwts=icwts where college_id=icollege_id; update ranking set nirf=inirf where college_id=icollege_id; exception
when no_data_found then dbms_output.put_line('No such College exists'); end;
/
