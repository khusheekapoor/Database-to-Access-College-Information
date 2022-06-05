create or replace procedure update_score(istudentid in varchar2, icgpa in number, iielts in number, itoefl in number, igre in number, igate in number, igmat in number, icat in number) as
years number; begin
select extract(year from graduation_date) - extract(year from enrolment_date) into years from student where student_id=istudentid;
update scores set cgpa=icgpa where student_id=istudentid; update scores set ielts=iielts where student_id=istudentid; update scores set toefl=itoefl where student_id=istudentid; update scores set gre=igre where student_id=istudentid; update scores set gate=igate where student_id=istudentid; update scores set gmat=igmat where student_id=istudentid; update scores set cat=icat where student_id=istudentid; exception
when no_data_found then
raise_application_error(-20001, 'No such student exists'); end;
/
