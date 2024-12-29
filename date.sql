SELECT now()

SELECT CURRENT_DATE;

SELECT now()::date;

SELECT now()::time;

SELECT to_char(now(),'month');

SELECT to_char(now(),'yyyy/mm/dd');


SELECT age(CURRENT_DATE,'1995-07-29');

SELECT * ,age(CURRENT_DATE,dob) FROM students; 

SELECT extract (year FROM '2002-02-28'::date);