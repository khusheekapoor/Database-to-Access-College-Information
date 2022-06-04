create or replace procedure new_college(email in varchar2, password in varchar2, college_name in varchar2, street in varchar2, city in varchar2, state in varchar2, country in varchar2, zip_code in number) as
v_college college%rowtype; new_college_number number; begin
select count(*)+1 into new_college_number from college; v_college.college_id := 'C'||lpad(new_college_number, 5, '0');
insert into college(college_id, password, email, college_name, street, city, state, country, zip_code)
values(v_college.college_id, password, email, college_name, street, city, state, country, zip_code);
exception
when no_data_found then new_college_number:=0;
v_college.college_id := 'C'||lpad(new_college_number, 5, '0');
insert into college(college_id, password, email, college_name, street, city, state, country, zip_code)
values(v_college.college_id, password, email, college_name, street, city, state, country, zip_code);
end;
/
