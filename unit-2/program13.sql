set serveroutput on
declare
         cursor s1 is select * from salary order by bsal desc;
         d salary%ROWTYPE;
begin 
open s1;
loop
fetch s1 into d;
exit when NOT s1%FOUND OR s1%ROWCOUNT > 5;
dbms_output.put_line('name:'||d.name||'department:'||d.dept||'salary:'||d.bsal);
end loop;
close s1;
end;
/
