create or replace procedure add_degree(college_id in varchar2, istream_name in varchar2, degree_type in varchar2, degree_name in varchar2, seats in number) as
streamid stream.stream_id%type; degree_num number;
v_degreeid varchar2(10); begin
select stream_id into streamid from stream where stream_name=istream_name; select count(*)+1 into degree_num from degree;
v_degreeid := 'D'||lpad(degree_num, 5, '0');
insert into degree values(v_degreeid, college_id, streamid, degree_type, degree_name, seats);
exception
when no_data_found then
v_degreeid := 'D'||lpad(degree_num, 5, '0');
insert into degree values(v_degreeid, college_id, streamid, degree_type, degree_name, seats);
end;
/
