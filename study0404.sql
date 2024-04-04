select ename,sal,deptno
from emp
where deptno in(select distinct deptno
		     from emp
		     where sal >= 3000
)
/
select ename,sal
from emp
where sal > all(select sal
		from emp
		where deptno =30)
/
select ename,sal
from emp
where sal > any (select sal
		      from emp
		      where deptno = 30)
/
create table emp01(
empno number(4),
enmae varchar2(20),
sal number(7,2))
/
select * from emp04
/
create table emp05
as
select * from emp
where deptno = 10
/
select * from emp06
/
alter table emp02
add (job varchar2(9))
/
rename emp03 to test
/
insert into dept01
values(20,'research','dallas')
/
insert into dept01
values (40,'operations',null)
/
insert all
into emp_hir values(empno,ename,hiredate)
into emp_mgr values(empno,ename,mgr)
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
