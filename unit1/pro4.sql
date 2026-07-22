-- Write a PL/SQL block which accepts measurement in
--feet and displays it in cm, inch and meter.,
set serveroutput on
declare
    feet num;
    cm num;
    inch num;
    meter num;
begin
    feet := &feet;
    cm := feet * 30.48;
    inch := feet * 12;
    meter := feet * 0.3048;
    DBMS_OUTPUT.PUT_LINE('Measurement in feet:'||feet);
    DBMS_OUTPUT.PUT_LINE('Measurement in centimeters:'||cm);
    DBMS_OUTPUT.PUT_LINE('Measurement in inches:'||inch);
    DBMS_OUTPUT.PUT_LINE('Measurement in meters:'||meter);
END;
/