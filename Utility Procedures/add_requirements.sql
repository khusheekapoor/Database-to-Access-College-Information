create or replace procedure add_requirement(college_id in varchar2, stream_id in varchar2, degree_id in varchar2, years in number, cgpa in number, ielts in number, toefl in number, gre in number, gate in number, gmat in number, cat in number) as
begin
insert into requirements values (college_id, stream_id, degree_id, years, cgpa, ielts, toefl, gre, gate, gmat, cat);
end;
/
