select * from view_sal
/
select * from emp_view_dept
/
create sequence dept_deptno_seq
increment by 10
start with 10
/
select sequence_name,min_value,max_value,
	    increment_by, cycle_flag
from user_sequences
/
create sequence emp_seq
start with 1
increment by 1
maxvalue 100000
/
create table emp01(
empno number(4) primary key,
ename varchar(10),
hiredate date
)
/
create sequence dept_deptno_seq
start with 10
increment by 10
maxvalue 30
/
select table_name,index_name,column_name
from user_ind_columns
where table_name in('EMP','EMP01')
/
select distinct empno,ename
from emp01
where ename='syj'
/
drop index idx_emp01_ename
/
create index idx_emp01_deptno
on emp01(deptno)
/
create table dept01
as
select *from dept where 1=0
/
insert into dept01 values(30,'±≥¿∞∆¿','¥Î¿¸')
/
create unique index idx_dept01_deptno
on dept01(deptno)
/
create index idx_dept01_com
on dept01(deptno,dname)
/
declare
  vempno emp.empno%Type;
  vename emp.ename%Type;
begin
  dbms_output.put_line( ' ÏÇ¨Î≤à  /  Ïù¥Î¶Ñ' );
  dbms_output.put_line('----------------');

  select empno, ename into vempno, vename
  from emp
  where ename='SCOTT';

 dbms_output.put_line(vempno || '/' || vename);
end;
/
declare

  type ename_table_type is table of emp.ename%type
  index by binary_integer;
  type job_table_type is table of emp.job%type
  index by binary_integer;

  ename_table ename_table_type;
  job_table job_table_type;

  i binary_integer := 0;
begin

  for k  in (select ename, job from emp) loop
   i := i+1;
   ename_table(i) := k.ename;
   job_table(i) := k.job;
  end loop;

  for j in 1..i loop
   dbms_output.put_line(rpad(ename_table(j),12)
     || ' / '  || rpad(job_table(j),9));
   end loop;
end;
/
