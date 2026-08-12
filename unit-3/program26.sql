set serveroutput on
declare 
              pnm char(22);
              p number(6);
              pid number:=&pid;
               
begin
select name,price into pnm,p from product where id=pid;
dbms_output.put_line('product name:'||pnm||'price:'||p);
exception 
when no_data_found then
dbms_output.put_line('product id:'||pid||'not available in table');
end;
/