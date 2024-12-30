CREATE TABLE employeess(
    employee_id Serial PRIMARY KEY,
    employee_name VARCHAR(50),
    department_name VARCHAR(50),
    salary DECIMAL(10,2),
    hire_date DATE
);

INSERT INTO employeess (employee_name, department_name, salary, hire_date) VALUES
('Alice Johnson', 'HR', 55000.00, '2022-01-10'),
('Bob Smith', 'Marketing', 60000.00, '2022-02-15'),
('Charlie Brown', 'Finance', 75000.00, '2022-03-20'),
('Diana Prince', 'HR', 52000.00, '2022-04-05'),
('Ethan Hunt', 'Marketing', 58000.00, '2022-05-15'),
('Fiona Gallagher', 'IT', 85000.00, '2022-06-01'),
('George Miller', 'Finance', 70000.00, '2022-06-20'),
('Hannah Baker', 'IT', 87000.00, '2022-07-05'),
('Ian Carter', 'HR', 56000.00, '2022-08-15'),
('Jack Dawson', 'Marketing', 61000.00, '2022-09-01'),
('Karen Williams', 'Finance', 78000.00, '2022-09-10'),
('Liam Johnson', 'IT', 92000.00, '2022-10-05'),
('Mia Adams', 'HR', 54000.00, '2022-11-01'),
('Noah Bennett', 'Marketing', 62000.00, '2022-12-10'),
('Olivia Parker', 'Finance', 76000.00, '2023-01-15'),
('Peter Collins', 'IT', 88000.00, '2023-02-05'),
('Quinn Taylor', 'Marketing', 59000.00, '2023-03-10'),
('Rachel Green', 'HR', 53000.00, '2023-04-01')
