SET SERVEROUTPUT ON;

DECLARE
    V_COUNT NUMBER;
BEGIN
    UPDATE EMP
    SET BASICSAL = BASICSAL + (BASICSAL * 5 / 100)
    WHERE DEPTNO = 20;

    V_COUNT := SQL%ROWCOUNT;

    IF SQL%ISOPEN THEN
        DBMS_OUTPUT.PUT_LINE('Implicit Cursor is OPEN');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Implicit Cursor is CLOSED');
    END IF;

    IF SQL%NOTFOUND THEN
        DBMS_OUTPUT.PUT_LINE(
            'No employee found in department 20.'
        );
    ELSE
        DBMS_OUTPUT.PUT_LINE(
            V_COUNT || ' employee(s) salary increased by 5%.'
        );
    END IF;

    COMMIT;
END;
/