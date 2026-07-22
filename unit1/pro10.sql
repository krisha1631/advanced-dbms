--table., Write a
--PL/SQL block to delete the record of an employee for a given EID.
set serveroutput on
declare
 salary number(22):= & salary;
begin
delete from employee where salary=salary;
commit;
dbms_output.put_line('record deleted');
end;
/