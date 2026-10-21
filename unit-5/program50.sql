create or replace trigger sunday_trigger
before insert or update or delete on student
begin
    if to_char(sysdate, 'fmday') = 'sunday' then
        raise_application_error(-20001,
        'table cannot be used on sunday');
    end if;
end;
/