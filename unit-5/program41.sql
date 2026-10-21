create or replace trigger weekend_trigger
before insert or update or delete on student
begin
    if to_char(sysdate, 'dy') in ('sat', 'sun') then
        raise_application_error(-20001,
        'table access is not allowed on weekends');
    end if;
end;
/