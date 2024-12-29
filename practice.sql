-- Active: 1734774437169@@127.0.0.1@5432@ph1@public


-- Some Query qustion  below here 

1. List all employees with their department names.
2. Find the employee with the highest salary in each department.
3. List all employees who have been hired after January 1, 2022.
4. Find the average salary of employees in each department.
5. List all employees who work in the 'Marketing' department.
6. Find the number of employees in each department.
7. List all departments with no employees.
8. Find employees who have the same salary as 'Alice Johnson'.
9. List all employees along with their department name, ordered by salary in descending order.
10. Find the total salary expense for each department.
11. List employees who have been hired in 2023 and work in the 'HR' department.
12. Find the employee with the lowest salary.
13. List employees whose name starts with 'A'.
14. Get the department names along with the employee names who earn more than 60,000.
15. Find all employees who do not belong to any department (NULL department).
16. List employees with their department name and hire date, ordered by the hire date.
17. List the total number of employees in each department, including departments with no employees.
18. show department name with average salary
19. Count Employees in Each Department
20. Find the Department name with Highst Average Salary
21.Coun Employees Hired Each Year 



CREATE TABLE employees(
    employee_id Serial PRIMARY KEY,
    employee_name VARCHAR(50),
    department_id INT REFERENCES departments(department_id),
    salary DECIMAL(10,2),
    hire_date DATE
);

-- Creating the departments table 

CREATE Table departments(
    department_id Serial PRIMARY KEY,
    department_name VARCHAR(50)
)


INSERT INTO departments (department_name) 
VALUES 
    ('HR'),
    ('Marketing'),
    ('Finance'),
    ('Sales'),
    ('IT'),
    ('Operations'),
    ('HR'), -- Repeated
    ('Customer Support'),
    ('Research'),
    ('Logistics'),
    ('Legal'),
    ('Marketing'), -- Repeated
    ('Procurement'),
    ('IT'), -- Repeated
    ('Engineering'),
    ('Admin'),
    ('Sales'), -- Repeated
    ('Quality Assurance'),
    ('Finance'), -- Repeated
    ('Design'),
    ('HR'); -- Repeated


    INSERT INTO employees (employee_name, department_id, salary, hire_date) 
VALUES
    ('Alice Johnson', 1, 50000.00, '2023-01-15'),
    ('Bob Smith', 2, 60000.00, '2022-07-10'),
    ('Carol Williams', 3, 55000.00, '2021-11-20'),
    ('David Brown', 4, 70000.00, '2023-05-01'),
    ('Emily Davis', 5, 52000.00, '2022-03-18'),
    ('Frank Moore', 6, 48000.00, '2021-09-25'),
    ('Grace Taylor', 1, 63000.00, '2023-06-10'),
    ('Hank White', 2, 58000.00, '2022-12-05'),
    ('Irene Miller', 3, 54000.00, '2021-04-14'),
    ('Jack Wilson', 4, 75000.00, '2023-02-28'),
    ('Karen Anderson', 5, 62000.00, '2022-08-22'),
    ('Liam Thomas', 6, 50000.00, '2021-01-10'),
    ('Mia Scott', 1, 52000.00, '2023-03-15'),
    ('Noah Harris', 2, 58000.00, '2022-11-01'),
    ('Olivia Lewis', 3, 61000.00, '2021-07-20'),
    ('Paul Young', 4, 72000.00, '2023-04-25'),
    ('Quinn Adams', 5, 56000.00, '2022-09-19'),
    ('Rachel Baker', 6, 47000.00, '2021-05-30'),
    ('Sam Carter', 1, 64000.00, '2023-07-05'),
    ('Tina Turner', 2, 59000.00, '2022-10-13'),
    ('Uma Roberts', 3, 53000.00, '2021-06-12'),
    ('Victor Clark', 4, 71000.00, '2023-01-18'),
    ('Wendy Green', 5, 62000.00, '2022-02-15'),
    ('Xander Hall', 6, 48000.00, '2021-12-01');

    select * from departments;

    select * from employees;


    -- 1. List all employees with their department names.

    -- best way to solved this  , use using for equal to join by department_id 
    select employee_name,department_name from employees join departments using(department_id)

    -- or same query write differnet way 
     select employee_name,department_name from employees join departments  ON employees.department_id = departments.department_id


    --2. Find the employee with the highest salary in each department.

    SELECT * from employees JOIN departments using (department_id)
        where  employees.salary=(select max(salary) FROM employees WHERE department_id= employees.department_id)

    --antoher way to solve this 

    SELECT department_name 


-- 18. show department name with average salary 

select department_name ,round(avg(salary)) from employees join departments using(department_id)
GROUP BY department_name

--19. Count Employees in Each Department

SELECT department_name  ,count(*) from employees join departments using(department_id)
GROUP BY department_name;

--20. Find the Department name with Highst Average Salary
select department_name ,round(avg(salary)) as avg_salary from employees join departments using(department_id)
GROUP BY department_name 
ORDER BY avg_salary DESC
LIMIT 1;






--21.Count Employees Hired Each Year 

select extract(YEAR form hire_date ) from employees ORDER BY 