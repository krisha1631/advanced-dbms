SET SERVEROUTPUT ON;

DECLARE
    CURSOR C_EMP(DNO NUMBER) IS
        SELECT ENAME, BASICSAL
        FROM EMP
        WHERE DEPTNO = DNO;

    V_TOTAL NUMBER := 0;
BEGIN
    FOR D IN (SELECT DISTINCT DEPTNO FROM EMP ORDER BY DEPTNO)
    LOOP
        V_TOTAL := 0;

        DBMS_OUTPUT.PUT_LINE('Department No: ' || D.DEPTNO);

        FOR E IN C_EMP(D.DEPTNO)
        LOOP
            DBMS_OUTPUT.PUT_LINE(
                E.ENAME || '  Basic Salary: ' || E.BASICSAL
            );

            V_TOTAL := V_TOTAL + E.BASICSAL;
        END LOOP;

        DBMS_OUTPUT.PUT_LINE(
            'Total Gross Salary: ' || V_TOTAL
        );

        DBMS_OUTPUT.PUT_LINE('-----------------------------');
    END LOOP;
END;
/