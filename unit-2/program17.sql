SET SERVEROUTPUT ON;

DECLARE
    CURSOR c1 IS
        SELECT NAME, ADDRESS FROM CUSTOMER;

    v_name CUSTOMER.NAME%TYPE;
    v_address CUSTOMER.ADDRESS%TYPE;

BEGIN
    OPEN c1;

    LOOP
        FETCH c1 INTO v_name, v_address;

        EXIT WHEN c1%NOTFOUND;

        DBMS_OUTPUT.PUT_LINE('Name    : ' || v_name);
        DBMS_OUTPUT.PUT_LINE('Address : ' || v_address);
        DBMS_OUTPUT.PUT_LINE('-----------------------');

    END LOOP;

    CLOSE c1;
END;
/
