SET SERVEROUTPUT ON;
DECLARE
    NO_DEPT_FOUND EXCEPTION;

    V_DEPTNO EMP.DEPTNO%TYPE := &DEPT_NO;

    CURSOR C_EMP IS
        SELECT *
        FROM EMP
        WHERE DEPTNO = V_DEPTNO;

    V_COUNT NUMBER := 0;

BEGIN
    FOR EMP_REC IN C_EMP LOOP

        INSERT INTO EMP_BACKUP
        VALUES (
            EMP_REC.EMPNO,
            EMP_REC.ENAME,
            EMP_REC.JOB,
            EMP_REC.MGR,
            EMP_REC.HIREDATE,
            EMP_REC.SAL,
            EMP_REC.COMM,
            EMP_REC.DEPTNO
        );

        V_COUNT := V_COUNT + 1;

    END LOOP;

    IF V_COUNT = 0 THEN
        RAISE NO_DEPT_FOUND;
    END IF;

    COMMIT;

    DBMS_OUTPUT.PUT_LINE(
        V_COUNT || ' record(s) inserted successfully.'
    );

EXCEPTION
    WHEN NO_DEPT_FOUND THEN
        DBMS_OUTPUT.PUT_LINE(
            'NO_DEPT_FOUND: No records found for department ' || V_DEPTNO
        );

    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END;
/