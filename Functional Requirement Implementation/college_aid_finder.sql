create or replace procedure find_college(istudent_id in varchar, icountry in varchar, istream in varchar, rankorg in varchar, lowrank in number, highrank in number) as
cursor col is select * from college where country=icountry; cursor req is select * from requirements;
cursor aids is select * from aid; v_degree degree%rowtype; v_score scores%rowtype;
v_col college%rowtype; rank number;
sid stream.stream_id%type; countcol number := 0; begin

select * into v_score from scores where student_id=istudent_id; select stream_id into sid from stream where stream_name=istream;
 
for c in col loop

case rankorg when 'QS' then
select qs into rank from ranking where college_id=c.college_id; when 'TIMES' then
select times into rank from ranking where college_id=c.college_id; when 'ARWU' then
select arwu into rank from ranking where college_id=c.college_id; when 'CWTS' then
select cwts into rank from ranking where college_id=c.college_id; when 'NIRF' then
select nirf into rank from ranking where college_id=c.college_id; else
dbms_output.put_line('Please enter valid rank organization!'); end case;

if rank is not null then
if rank between lowrank and highrank then for r in req loop
if r.college_id=c.college_id and r.stream_id=sid then
if v_score.years>=r.years and v_score.cgpa>=r.cgpa then
if (v_score.ielts is not null and r.ielts is not null and v_score.ielts>=r.ielts) or (v_score.toefl is not null and r.toefl is not null and v_score.toefl>=r.toefl) then
if (((v_score.gmat is not null and r.gmat is not null and v_score.gmat>=r.gmat) or (v_score.cat is not null and r.cat is not null and v_score.cat>=r.cat)) or ((v_score.gre is not null and r.gre is not null and v_score.gre>=r.gre) or (v_score.gate is not null and r.gate is not null and v_score.gate>=r.gate))) then
countcol:=1;
select * into v_degree from degree where degree_id=r.degree_id; select * into v_col from college where college_id=v_degree.college_id;
dbms_output.put_line(v_degree.degree_type||' '||v_degree.degree_name||' at '||v_col.college_name);
dbms_output.put_line('Aids: '); for a in aids loop
if a.college_id=v_degree.college_id then dbms_output.put_line(a.scholarship_name||' by '||a.organization); end if; end loop; end if; end if; end if; end if; end loop; end if; else
dbms_output.put_line('Please enter rank!'); end if;
if countcol=0 then
dbms_output.put_line('You are not eligible for any college in our database!'); end if;

end loop; end;
/
