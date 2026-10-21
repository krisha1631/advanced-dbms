create or replace trigger emp_delete
before delete on emp
for each row
begin
    insert into newemp
    values (:old.eid, :old.ename, :old.salary);
end;
/