select ename,deptno,
case when deptno=10 then 'accounting'
when deptno=20 then 'research'
when deptno=30 then 'sales'
when deptno=40 then 'operations'
end as dname
from emp
/
select *
from dual
/
select ename,deptno,
case when deptno=10 then 'accounting'
when deptno=20 then 'research'
when deptno=30 then 'sales'
when deptno=40 then 'operations'
end as dname
from emp
/
select *
from dual
/
select sum(sal)
from emp
/
select max(sal),min(sal)
from emp
/
select count(comm)
from emp
/
select count(job) 업무수
from emp
/
select count(distinct job) 업무수
from emp
/
select deptno,avg(sal)
from emp
group by deptno
/
select deptno,max(sal), min(sal)
from emp
group by deptno
/
select deptno,count(*), count(comm)
from emp
group by deptno
/
select deptno,avg(sal)
from emp
group by deptno
having avg(sal)>=2000
/
select deptno,max(sal),min(sal)
from emp
group by deptno
having max(sal) > 2900
/
select deptno
from emp
where ENAME='SCOTT'
/
select *
from dept
where deptno=20
/
select *
from emp,dept
/
select *
from emp,dept
where emp.deptno=dept.deptno
/
select ename,dname
from emp,dept
where emp.deptno=dept.deptno
and ename='SCOTT'
/
select emp.ename, dept.dname,emp.deptno
from emp,dept
where emp.deptno=dept.deptno
and ename='SCOTT'
/
select e.ename,d.dname,e.deptno,d.deptno
from emp e,dept d
where e.deptno=d.deptno
and e.ename='SCOTT'
/
select *
from salgrade
/
select ename,sal,grade
from emp,salgrade
where sal between losal and hisal
/
select employee.ename||'의 매니저는'
|| manager.ename||'입니다.'
from emp employee, emp manager
where employee.mgr=manager.empno
/
select employee.ename ||'의 매니저는 '
||manager.ename ||' 입니다.'
from emp employee, emp manager
where employee.mgr = manager.empno(+)
/
select sysdate, to_char(sysdate,'yyyy-mm-dd')
from emp
/
select deptno,avg(sal)
from emp
group by deptno
/
select deptno,max(sal),min(sal)
from emp
group by deptno
/
select deptno,avg(sal)
from emp
group by deptno
having avg(sal)>=2000
/
select deptno, max(sal), min(sal)
from emp
group by deptno
having max(sal)>2900
/
select emp.ename,dept.dname, emp.deptno
from emp,dept
where emp.deptno=dept.deptno
and ename='SCOTT'
/
select e.ename,d.dname,e.deptno,d.deptno
from emp e,dept d
where e.deptno=d.deptno
and e.ename='SCOTT'
/
select ename,sal, grade
from emp,salgrade
where sal between losal and hisal
/
