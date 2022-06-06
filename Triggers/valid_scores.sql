create or replace trigger student_score before insert or update on scores for each row declare
cursor c_stud is select student_id from student;
counter number := 0; begin
for i in c_stud loop
if i.student_id=:new.student_id then counter := counter+1; end if;
end loop;
if counter=0 then
raise_application_error(-20001, 'No such student exists'); end if; 
if :new.years<0 then
raise_application_error(-20001, 'Years must be positive'); end if; 
if :new.cgpa<0 then
raise_application_error(-20001, 'CGPA must be positive'); end if; 
if :new.years is null then
raise_application_error(-20001, 'Years must be entered'); end if; 
if :new.cgpa is null then
raise_application_error(-20001, 'CGPA must be entered'); end if; 
if :new.ielts<0 or :new.ielts>9 then
raise_application_error(-20001, 'IELTS score must be between 0 and 9'); end if; 
if :new.toefl<0 or :new.toefl>120 then
raise_application_error(-20001, 'TOEFL score must be between 0 and 120'); end if; 
if :new.gre<0 or :new.gre>340 then
raise_application_error(-20001, 'GRE score must be between 0 and 340'); end if; 
if :new.gate<0 or :new.gate>1000 then
raise_application_error(-20001, 'GATE score must be between 0 and 1000'); end if; 
if :new.gmat<0 or :new.gmat>800 then
raise_application_error(-20001, 'GMAT score must be between 0 and 800'); end if; 
if :new.cat<0 or :new.cat>300 then
raise_application_error(-20001, 'CAT score must be between 0 and 300'); end if; 
end;
/
