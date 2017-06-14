SET serveroutput on;
DECLARE
ActiveCount number(10,2);
InActiveCount number (10,2);
BEGIN
dbms_output.put_line('ActiveCount,InActiveCount');
FOR counter IN 1 .. 1800
LOOP
  SELECT count(*) INTO ActiveCount FROM v$session where username = 'SASOSE' and status = 'ACTIVE';-- dbms_output.put_line (ActiveCount) ;
  SELECT count(*) INTO InActiveCount FROM v$session where username = 'SASOSE' and status = 'INACTIVE';-- dbms_output.put_line (InActiveCount);
  dbms_output.put_line('' || ActiveCount || ',' || InActiveCount);
  dbms_lock.sleep( 2 ); 
END LOOP;
END;
/
