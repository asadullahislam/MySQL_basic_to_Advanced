CREATE TABLE students(
    student_id SERIAL PRIMARY KEY,
    first_name varchar(50) NOT NULL,
    last_name varchar(50) NOT NULL,
    age INT,
    grade CHAR(2),
    course VARCHAR(50),
    email varchar(100),
    dob DATE,
    blood_group VARCHAR(5),
    country VARCHAR(50)
)

INSERT INTO students (first_name, last_name, age, grade, course, email, dob, blood_group, country)
    VALUES
    ('John', 'Doe', 20, 'A', 'Computer Science', 'john.doe@example.com', '2004-01-15', 'O+', 'USA'),
    ('Jane', 'Smith', 22, 'B', 'Mechanical Engineering', 'jane.smith@example.com', '2002-04-12', 'A-', 'UK'),
    ('Alice', 'Johnson', 21, 'A', 'Mathematics', 'alice.johnson@example.com', '2003-05-30', 'B+', 'Canada'),
    ('Bob', 'Brown', 23, 'C', 'Physics', 'bob.brown@example.com', '2001-07-08', 'AB-', 'Australia'),
    ('Charlie', 'Davis', 22, 'B', 'Electrical Engineering', 'charlie.davis@example.com', '2002-11-20', 'O-', 'USA'),
    ('David', 'Miller', 19, 'A', 'Biology', 'david.miller@example.com', '2005-03-25', 'O+', 'India'),
    ('Eve', 'Wilson', 20, 'A', 'Psychology', 'eve.wilson@example.com', '2004-06-18', 'B-', 'Germany'),
    ('Frank', 'Moore', 21, 'B', 'History', 'frank.moore@example.com', '2003-02-03', 'AB+', 'France'),
    ('Grace', 'Taylor', 23, 'C', 'Chemistry', 'grace.taylor@example.com', '2001-10-14', 'O-', 'USA'),
    ('Hank', 'Anderson', 20, 'A', 'Sociology', 'hank.anderson@example.com', '2004-09-10', 'A+', 'UK'),
    ('Ivy', 'Thomas', 22, 'B', 'Philosophy', 'ivy.thomas@example.com', '2002-12-22', 'B-', 'Canada'),
    ('Jack', 'Jackson', 21, 'A', 'Computer Science', 'jack.jackson@example.com', '2003-08-11', 'O+', 'Australia'),
    ('Kara', 'White', 23, 'B', 'Law', 'kara.white@example.com', '2001-05-02', 'AB+', 'India'),
    ('Leo', 'Harris', 19, 'A', 'Business Administration', 'leo.harris@example.com', '2005-01-01', 'B+', 'Germany'),
    ('Mia', 'Martin', 22, 'B', 'Nursing', 'mia.martin@example.com', '2002-07-19', 'O-', 'France'),
    ('Nina', 'Lee', 20, 'A', 'Art History', 'nina.lee@example.com', '2004-02-10', 'A+', 'USA'),
    ('Oscar', 'Clark', 21, 'C', 'Economics', 'oscar.clark@example.com', '2003-04-27', 'O+', 'UK'),
    ('Paul', 'Lewis', 22, 'B', 'Mathematics', 'paul.lewis@example.com', '2002-08-15', 'B-', 'Canada'),
    ('Quinn', 'Walker', 21, 'A', 'Political Science', 'quinn.walker@example.com', '2003-03-06', 'AB-', 'Australia'),
    ('Rachel', 'Hall', 23, 'C', 'Engineering', 'rachel.hall@example.com', '2001-11-29', 'O-', 'USA'),
    ('Sam', 'Allen', 20, 'A', 'Philosophy', 'sam.allen@example.com', '2004-12-18', 'A+', 'India'),
    ('Tina', 'Young', 19, 'B', 'Architecture', 'tina.young@example.com', '2005-06-23', 'B+', 'Germany'),
    ('Ursula', 'King', 22, 'A', 'Marketing', 'ursula.king@example.com', '2002-10-30', 'O-', 'France'),
    ('Victor', 'Scott', 21, 'C', 'Computer Science', 'victor.scott@example.com', '2003-01-16', 'AB+', 'UK');


SELECT * FROM students  ORDER BY first_name ASC

SELECT email as "Student Email" from students ORDER BY email asc ;

SELECT DISTINCT country FROM students

-- scalar function -

SELECT upper(first_name) FROM students;

-- Aggregate function 

SELECT avg(age) FROM students;

SELECT max(age) FROM students;

SELECT sum(age) FROM students;

SELECT * FROM students
    WHERE NOT country='UK';


--COLESCE 
SELECT COALESCE(email,'Email not provide') from students;

