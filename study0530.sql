declare
  vemp emp%rowtype;
  annsal number(7,2);
begin

   select *
   into vemp
   from emp
   where ename = 'SCOTT';
if(vemp.comm is null) then
  annsal := vemp.sal * 12;
else
   annsal := vemp.sal * 12 + vemp.comm;

end if;

  dbms_output.put_line('사번 / 이름 / 연봉');
  dbms_outpupt.put_line('---------------------');
  dbms_output.put_line(vemp.empno || '/'
	  || vemp.ename || '/' ||annsal);
end;
/
declare
  vemp emp%rowtype;
  annsal number(7,2);
begin

   select *
   into vemp
   from emp
   where ename = 'SCOTT';
if(vemp.comm is null) then
  annsal := vemp.sal * 12;
else
   annsal := vemp.sal * 12 + vemp.comm;

end if;

  dbms_output.put_line('사번 / 이름 / 연봉');
  dbms_outpupt.put_line('---------------------');
  dbms_output.put_line(vemp.empno || '/'
	  || vemp.ename || '/' ||annsal);
end;
/
declare
  vemp emp%rowtype;
  vdname varchar2(14);
begin
  dbms_output.put_line('사번 / 이름 / 부서명');
  dbms_output.put_line('------------------------');
  select *
  into vemp
  from emp
  where ename = 'SCOTT';
  if (vemp.deptno =10) then
     vdname := 'accounting';
  elsif (vemp.deptno = 20) then
     vdname := 'research';
  elsif (vemp.deptno = 30) then
     vdname := 'sales';
  elsif(vemp.deptno = 40) then
     vdname := 'operations';
  end if;
  dbms_output.put_line(vemp.empno || '/' ||
  vemp.ename || '/' || vdname);
end;
/
declare
  n number := 1;
begin
  loop
   dbms_output.put_line( n );
   n := n +1;
   if n >5 then
   exit;
   end if;
  end loop;
end;
/
declare
begin
  for n in 1..5 loop
    dbms_output.put_line( n );
  end loop;
end;
/
declare
  n number := 1;
begin
  while n <= 5 loop
    dbms_output.put_line( n );
    n := n + 1;
   end loop;
end;
/
create or replace procedure del_all
is
begin
   delete from emp01;
end;
/
create or replace procedure del_all
is
begin
   delete from emp01;
end;
/
create or replace procedure
del_ename(vename emp01.ename%Type)
is
begin
  delete from emp01 where ename = vename;
end;
/
create or replace procedure sel_empno
( vempno in   emp.empno%Type,
  vename out  emp.ename%Type,
  vsal      out  emp.sal%Type,
  vjob     out  emp.job%Type
)
is
begin
	select ename,sal,job into vename,vsal,vjob
	from emp
	where empno=vempno;
end;
/
