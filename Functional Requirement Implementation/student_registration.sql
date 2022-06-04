create or replace procedure new_student(phone in number, email in varchar2, password in varchar2, first_name in varchar2, last_name in varchar2, degree_type in varchar2, icollege_name in varchar2, enrolment_date in date, graduation_date in date, credits in number) as
v_student student%rowtype; new_student_number number;
v_id college.college_id%type := NULL; cursor col is select * from college; begin
select count(*)+1 into new_student_number from student; v_student.student_id := 'S'||lpad(new_student_number, 5, '0'); for c in col loop
if c.college_name=icollege_name then v_id:=c.college_id; end if;
end loop;
insert into student(student_id, password, phone, email, first_name, last_name, degree_type, college_name, college_id, enrolment_date, graduation_date, credits) values(v_student.student_id, password, phone, email, first_name, last_name, degree_type, icollege_name, v_id, enrolment_date, graduation_date, credits);
exception
when no_data_found then new_student_number:=0;
v_student.student_id := 'S'||lpad(new_student_number, 5, '0'); for c in col loop
if c.college_name=icollege_name then v_id:=c.college_id; end if;
end loop;
insert into student(student_id, password, phone, email, first_name, last_name, degree_type, college_name, college_id, enrolment_date, graduation_date, credits) values(v_student.student_id, password, phone, email, first_name, last_name, degree_type, icollege_name, v_id, enrolment_date, graduation_date, credits);
end;
/
