drop table emp05
/
alter table emp01
modify(job varchar2(30))
/
alter table emp01
drop column job
/
alter table emp02
drop unused columns
/
select * from dept01
/
insert into dept01
values(20,'research', 'dallas')
/
insert into dept01
values(40,'opertations', null)
/
create table dept02
as
select * from dept where 1=0
/
insert into dept02
select * from dept
/
update emp01
set deptno =30
/
update emp01
set sal = sal *1.1
/
update emp01
set hiredate = sysdate
/
create table emp01
as
select * from emp
/
update emp01
set deptno=30
where deptno=10
/
update emp01
set sal = sal *1.1
where sal >= 3000
/
update emp01
set hiredate = sysdate
where substr(hiredate,1,2)='87'
/
update emp01
set hiredate=sysdate,sal=50,comm=4000
where ename='scott'
/
update dept01
set loc=(select loc
from dept01
where deptno=40)
where deptno=20
/
delete from dept01
where deptno=30
/
delete from emp01
where deptno=(select deptno
from dept
where dname ='sales')
/
create table emp02
as
select *from emp
where job = 'manager'
/
insert into emp02
values(8000,'syj','top',7566,'2009/01/12', 1200,10,20)
/
merge into emp01
using emp02
on(emp01.empno=emp02.empno)
when matched then
update set
emp01.ename=emp02.ename,
emp01.job=emp02.job,
emp01.mgr=emp02.mgr,
emp01.hiredate=emp02.hiredate,
emp01.sal=emp02.sal,
emp01.comm=emp02.comm,
emp01.deptno=emp02.deptno
when not matched then
insert values(emp02.empno,emp02.ename,emp02.job,
emp02.mgr,emp02.hiredate,emp02.sal,
emp02.comm,emp02.deptno)
/
