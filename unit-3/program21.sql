set serveroutput on
declare
              k1 number:=&n1;
              k2 number:=&n2;
              d number;
begin
dbms_output.put_line('value 1:'||k1);
dbms_output.put_line('value 2:'||k2);
d:=k1/k2;
dbms_output.put_line('answer:'||d);
EXCEPTION
when zero_divide then
dbms_output.put_line('you are trying to divide no by zero');
dbms_output.put_line('no 2 must be >0 so reenter no');
end;
/