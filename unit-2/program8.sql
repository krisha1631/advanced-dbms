SET SERVEROUTPUT ON;

DECLARE
    CURSOR c1 IS
        SELECT *
        FROM CUSTOMER
        WHERE ADDRESS LIKE 'r%';

BEGIN
    FOR rec IN c1 LOOP
        DBMS_OUTPUT.PUT_LINE('Name    : ' || rec.NAME);
        DBMS_OUTPUT.PUT_LINE('Address : ' || rec.ADDRESS);
        DBMS_OUTPUT.PUT_LINE('----------------------');
    END LOOP;
END;
/