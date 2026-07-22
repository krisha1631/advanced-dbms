--converts temprature from celsius to fahrenheit
set serveroutput on
declare
  
  c number:=&c;
  f number;
begin
  f:=(c*(9/5))+32;
dbms_output.put_line('celsius:'||f);


end;
/