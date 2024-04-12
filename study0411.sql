create table emp01(
empnno number(4),
ename varchar2(20),
sal number (7,2))
/
create table emp02
as
select * from emp
/
create table emp03
as
select empno,ename from emp
/
create table emp05
as
select * from emp where 1=0
/
alter table emp01
drop column job
/
alter table emp02
drop unused columns
/
insert into dept01
(deptno, dname)
values (30,'sales')
/
insert into dept01
values(40, 'operations', null)
/
insert all
into emp_hir values(empno,ename,hiredate)
into emp_mgr values (empno,ename,mgr)
select empno,ename,hiredate,mgr
from emp
where deptno=20
/
insert all
when hiredate > '1982/01/01' then
into emp_hir01 values(empno,ename,hiredate)
when sal > 2000 then
into emp_sal01 values(empno,ename,sal)
select empno,ename,hiredate,sal from emp
/
update emp01
set hiredate=sysdate
/
create table emp01
as
select * from emp
/
update emp01
set sal = sal *1.1
where sal >=3000
/
update emp01
set hiredate = sysdate
where substr(hiredate, 1,2)='87'
/
