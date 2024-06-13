create or replace procedure cursor_sample02
is
  vdept dept%rowtype;
  cursor c1
  is
 select * from dept;
begin
  dbms_output.put_line('부서번호 / 부서명 / 지역명');
  dbms_output.put_line('--------------------------');
  for vdept in c1 loop
      exit when c1%notfound;
      dbms_output.put_line(vdept.deptno ||
      ' ' || vdept.dname || ' ' || vdept.loc);
  end loop;
end;
/
grant create session to user01
/
select * from scott.emp
/
select * from user_tab_privs_made
/
grant create session to user03
/
grant select on scott.emp to user01
/
grant select on emp to mrole02
/
drop role mrole02
/
grant select on emp to def_role
/
grant select on scott.dept to test_role
/
drop public synonym PubDEPT
/
