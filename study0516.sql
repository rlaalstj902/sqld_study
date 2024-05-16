create table emp05(
empno number(4) constraint emp05_empno_pk primary key,
ename varchar2(10) constraint emp05_ename_nn not null,
job varchar2(9),
deptno number(2)
)
/
create table emp06(
empno number(4)
constraint emp06_empno_pk primary key,
ename varchar2(10)
constraint emp06_ename_nn not null,
job varchar2(9),
deptno number(2)
constraint emp06_deptno_fk references dept(deptno)
)
/
create table emp07(
empno number(4)
constraint emp07_empno_pk primary key,
ename varchar2(10)
constraint emp07_ename_nn not null,
sal number(7,2)
constraint emp07_sal_ck check(sal between 500 and 5000),
gender varchar2(1)
constraint emo07_gender_ck check(gender in('m','f'))
)
/
create table dept01(
deptno number(2) primary key,
dname varchar2(14),
loc varchar2(13) default 'seoul'
)
/
create table emp01(
empno number(4) primary key,
enmae varchar2(10) not null,
job varchar2(9) unique,
deptno number(4) references dept(deptno
)
)
/
create table emp03(
empno number(4),
ename varchar2(10) constraint emp03_ename_nn not null,
job varchar2(9),
deptno number(4),
constraint emp03_empno_pk primary key(empno),
constraint emp03job_uk unique(job),
constraint emp03_deptno_fk foreign key(deptno)
references dept(deptno)
)
/
create table member01(
name varchar2(10),
address varchar2(30),
hphone varchar2(16),
constraint member01_combo_pk primary key(name,hphone)
)
/
create table emp01(
empno number(4),
ename varchar2(10),
job varchar2(9),
deptno number(4)
)
/
alter table emp01
add constraint emp01_deptno_fk
foreign key(deptno) references dept(deptno)
/
create table dept01(
deptno number(2) constraint dept01_deptno_pk primary key,
dname varchar2(14),
loc varchar2(13)
)
/
create table emp_copy
as
select * from emp
/
select * from view_sal
/
create or replace view emp_view30
as
select empno,ename,sal,comm,deptno
from emp_copy
where deptno=30
/
select *from emp_view30
/
