SET SERVEROUTPUT ON;

DECLARE
    v_eid EMPLOYE.EID%TYPE := &EID;
    v_name EMPLOYE.EName%TYPE;
    v_basic EMPLOYE.BasicSal%TYPE;

    v_da NUMBER(8,2);
    v_hra NUMBER(8,2);
    v_medical NUMBER := 500;
    v_pf NUMBER(8,2);
    v_gross NUMBER(8,2);

BEGIN
    SELECT EName, BasicSal
    INTO v_name, v_basic
    FROM EMPLOYE
    WHERE EID = v_eid;

    v_da := v_basic * 0.50;
    v_hra := v_basic * 0.15;
    v_pf := v_basic * 0.10;

    v_gross := v_basic + v_da + v_hra + v_medical - v_pf;

    DBMS_OUTPUT.PUT_LINE('Employee ID   : ' || v_eid);
    DBMS_OUTPUT.PUT_LINE('Employee Name : ' || v_name);
    DBMS_OUTPUT.PUT_LINE('Basic Salary  : ' || v_basic);
    DBMS_OUTPUT.PUT_LINE('DA            : ' || v_da);
    DBMS_OUTPUT.PUT_LINE('HRA           : ' || v_hra);
    DBMS_OUTPUT.PUT_LINE('Medical       : ' || v_medical);
    DBMS_OUTPUT.PUT_LINE('PF            : ' || v_pf);
    DBMS_OUTPUT.PUT_LINE('Gross Salary  : ' || v_gross);

END;
/