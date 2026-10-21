create or replace trigger emp_update
after update on emp
for each row
begin
    insert into newemp
    values (:old.eid, :old.ename, :old.salary);
end;
/