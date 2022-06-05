create or replace procedure add_aid(icollege_id in varchar2, scholarship_name in varchar2, organization in varchar2) as
v_country college.country%type; begin
select country into v_country from college where college_id=icollege_id; insert into aid values(icollege_id, scholarship_name, organization, v_country); exception
when no_data_found then v_country:=NULL;
insert into aid values(icollege_id, scholarship_name, organization, v_country); end;
/
