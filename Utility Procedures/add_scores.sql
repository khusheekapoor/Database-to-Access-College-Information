create or replace procedure add_score(istudent_id in varchar2, cgpa in number, ielts in number, toefl in number, gre in number, gate in number, gmat in number, cat in number) as years number;
begin
select extract(year from graduation_date) - extract(year from enrolment_date) into years from student where student_id=istudent_id;
insert into scores values (istudent_id, years, cgpa, ielts, toefl, gre, gate, gmat, cat); exception
when no_data_found then years:=3;
insert into scores values (istudent_id, years, cgpa, ielts, toefl, gre, gate, gmat, cat); end;
/
