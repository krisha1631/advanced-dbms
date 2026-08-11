SET SERVEROUTPUT ON;

DECLARE
    pname VARCHAR2(30) := '&product_name';
    qty NUMBER := &quantity;
    price NUMBER := &price;
    per NUMBER := &discount_percent;
    total NUMBER;
    discount NUMBER;
    final_amount NUMBER;

BEGIN
    total := qty * price;
    discount := total * per / 100;
    final_amount := total - discount;

    DBMS_OUTPUT.PUT_LINE('Product Name = ' || pname);
    DBMS_OUTPUT.PUT_LINE('Quantity = ' || qty);
    DBMS_OUTPUT.PUT_LINE('Price = ' || price);
    DBMS_OUTPUT.PUT_LINE('Total Amount = ' || total);
    DBMS_OUTPUT.PUT_LINE('Discount = Rs. ' || discount);
    DBMS_OUTPUT.PUT_LINE('Final Amount = Rs. ' || final_amount);
END;
/
