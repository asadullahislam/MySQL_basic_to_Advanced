SELECT * from students;

SELECT country, count(*) from students
    GROUP BY country; 
SELECT country, avg(age) from students
    GROUP BY country; 

    SELECT country ,avg(age) FROM students
         GROUP BY country 
            HAVING  avg(age)>20;

SELECT extract(year FROM dob) as birth_year,count(*) FROM students
    GROUP BY birth_year
