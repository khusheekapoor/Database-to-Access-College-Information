create or replace procedure update_requirements(icollegeid in varchar2, istreamid in varchar2, idegreeid in varchar2, iyears in number, icgpa in number, iielts in number, itoefl in number, igre in number, igate in number, igmat in number, icat in number) as
years number; begin
update requirements set years=iyears where college_id=icollegeid and stream_id=istreamid and degree_id=idegreeid;
update requirements set cgpa=icgpa where college_id=icollegeid and stream_id=istreamid and degree_id=idegreeid;
update requirements set ielts=iielts where college_id=icollegeid and stream_id=istreamid and degree_id=idegreeid;
update requirements set toefl=itoefl where college_id=icollegeid and stream_id=istreamid and degree_id=idegreeid;
update requirements set gre=igre where college_id=icollegeid and stream_id=istreamid and degree_id=idegreeid;
update requirements set gate=igate where college_id=icollegeid and stream_id=istreamid and degree_id=idegreeid;
update requirements set gmat=igmat where college_id=icollegeid and stream_id=istreamid and degree_id=idegreeid;
update requirements set cat=icat where college_id=icollegeid and stream_id=istreamid and degree_id=idegreeid;
exception
when no_data_found then
raise_application_error(-20001, 'Please check IDs!'); end;
/
