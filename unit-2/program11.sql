DECLARE
BEGIN
   
    UPDATE staff_info
    SET basic_salary = basic_salary + (basic_salary * 0.10)
    WHERE dept_no = 10;

    
    IF SQL%ROWCOUNT > 0 THEN
        DBMS_OUTPUT.PUT_LINE(SQL%ROWCOUNT ||
                             ' employee(s) salary updated successfully.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('No employee found in department number 10.');
    END IF;

    COMMIT;
END;
/
