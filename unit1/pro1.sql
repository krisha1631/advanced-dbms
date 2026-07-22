--print sum of +,-,*,/
set serveroutput on
declare
   no1 number:='&number';
   no2 number:='&number';
   s number;
   s1 number;
   m number;
   d number;

begin
     s:=no1+no2;
     dbms_output.put_line('sum of no1+no2='||s);
     s1:=no1-no2;
     dbms_output.put_line('sub of no1-no2='||s1 );
     m:=no1*no2;
     dbms_output.put_line('mul of no1-no2='||m);
     d:=no1/no2;
    dbms_output.put_line('div of no1/no2=||d');
    




end;
/