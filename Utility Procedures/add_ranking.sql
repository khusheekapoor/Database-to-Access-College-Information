create or replace procedure add_ranking(college_id in varchar2, qs in number, times in number, arwu in number, cwts in number, nirf in number) as
begin
insert into ranking values(college_id, qs, times, arwu, cwts, nirf); end;
/
