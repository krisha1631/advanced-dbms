create or replace trigger emp_insert
after insert on emp
for each row
begin
    insert into newemp (eid, ename, salary)
    values (:new.eid, :new.ename, :new.salary);
end;
/