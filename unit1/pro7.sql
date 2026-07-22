--program 7
set serveroutput on
declare
xrlno NUMBER(9):=&xrlno;
xm1 NUMBER(9);
xm2 NUMBER(9);
xm3 NUMBER(9);
xm4 NUMBER(9);
xm5 NUMBER(9);
tot NUMBER(9);
p NUMBER(9);
begin

SELECT m1,m2,m3,m4,m5 INT0 xm1,xm2,xm3,xm4,xm5 FROM miid1 WHERE RLNO=xrlno;

tot:=xm1 + xm3 + xm3 + xm4 + xm5;
p:=tot/5;

if xm1 > 40 and xm2 > 40 and xm3 > 40 and xm4 >
40 and xm5 > 40

then
if p >= 40 and p < 50 then

update miid1 set total=tot,per=p,result='Pass',Grade='D' where RLNO=xrlno;

elsif p >= 50 and p < 60 then

update miid1 set total=tot,per=p,result='Pass',Grade='C' where RLNO=xrlno;

elsif p >= 60 and p < 70 then

update miid1 set total=tot,per=p,result='Pass',Grade='B' where RLNO=xrlno;

elsif p >= 70 and p <= 100 then

update miid1 set total=tot,per=p,result='Pass',Grade='A' where RLNO=xrlno;

else

update miid1 set total=tot,per=p,result='Fail',Grade='F' where RLNO=xrlno;

end if;

else

update miid1 set total=tot,per=p,result='Fail',Grade='F' where RLNO=xrlno;

end if;
end;
/