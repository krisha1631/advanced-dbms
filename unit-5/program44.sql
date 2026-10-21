create or replace trigger emp_update
before update on emp
for each row
begin
    insert into newemp (eid, ename, salary)
    values (:old.eid, :old.ename, :old.salary);
end;
/