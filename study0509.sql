select *
from user_cons_columns
/
create table emp01(
empno number(4),
ename varchar2(10),
job varchar2(9),
deptno number(2)
)
/
insert into emp01
values(null,null,'salesman',30)
/
create table emp02(
empno number(4) not null,
ename varchar2(10) not null,
job varchar2(9),
deptno number(2)
)
/
insert into emp02
values(null,null,'salesman',10)
/
create table emp03(
empno number(4)unique,
ename varchar2(10) not null,
job varchar2(9),
deptno number(2)
)
/
insert into emp03
values(null,'jones','salesman',10)
/
create table emp04(
empno number(4)constraint emp04_empno_uk unique,
ename varchar2(10)constraint emp04_ename_nn not null,
job varchar2(9),
deptno number(2)
)
/
insert into emp05
values(7499,'jones','manager',20)
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
constraint emp07_gender_ck check(gender in('m','f'))
)
/
insert into dept01
(deptno,dname)
values(10,'accounting')
/
create table emp01(
empno number(4) primary key,
ename varchar2(10) not null,
job varchar2(9)unique,
deptno number(4)references dept(deptno)
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
eame varchar2(10),
job varchar2(9),
deptno number(4)
)
/
alter table emp01
add constraint emp01_Deptno_fk
foreign key(deptno) references dept(deptno)
/
alter table emp05
drop constraint emp05_ename_nn
/
insert into dept01
values(20,'research','dallas
')
/
