SET SERVEROUTPUT ON;

BEGIN
   FOR E IN (
      SELECT * FROM EMPLO
      WHERE GENDER = 'Male'
      AND DEPTNAME = 'HR'
   )
   LOOP
      DBMS_OUTPUT.PUT_LINE(E.EID || ' ' || E.ENAME || ' ' || E.DEPTNAME);
   END LOOP;
END;
/