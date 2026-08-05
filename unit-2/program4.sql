set serveroutput on
declare
           i number;
begin
for i in (select name,dept,bsal from salary)
loop
dbms_output.put_line('name:' || i.name|| 'dept:'||i.dept||'bsal:'||i.bsal);
end loop;
end;
/