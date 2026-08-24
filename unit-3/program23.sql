DECLARE
    v_ename EMP.ENAME%TYPE;
    v_salary EMP.BASICSAL%TYPE;
BEGIN
    -- Accept employee name
    v_ename := '&Enter_Employee_Name';

    -- Get Basic Salary
    SELECT BASICSAL
    INTO v_salary
    FROM EMP
    WHERE ENAME = '&Enter_Employee_Name';

    -- Display Result
    DBMS_OUTPUT.PUT_LINE('Employee Name : ' || v_ename);
    DBMS_OUTPUT.PUT_LINE('Basic Salary  : ' || v_salary);

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Employee does not exist.');
END;
/