create or replace trigger gender_trigger
before insert on emp
for each row
begin
    if upper(:new.gender) = 'MALE' then
        :new.ename := 'mr. ' || :new.ename;
    elsif upper(:new.gender) = 'FEMALE' then
        :new.ename := 'ms. ' || :new.ename;
    end if;
end;
/