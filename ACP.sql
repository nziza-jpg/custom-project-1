CREATE TABLE IF NOT EXISTS employees (
    employee_id INT PRIMARY KEY,
    first_name TEXT,
    last_name TEXT,
    department TEXT,
    hire_date DATE,
    salary TEXT,
    manager_id INT
);

INSERT INTO employees (employee_id, first_name, last_name, department, hire_date, salary, manager_id)
VALUES 
    (1, 'Rahul', 'Sharma', 'Sales', '2020-05-15', 50000, NULL),
    (2, 'Priya', 'Patel', 'HR', '2019-08-20', 45000, 1),
    (3, 'Amit', 'Singh', 'IT', '2021-03-10', 60000, 1),
    (4, 'Neha', 'Gupta', 'Sales', '2022-01-05', 48000, 3);

SELECT * FROM employees;

SELECT * FROM employees WHERE hire_date > '2020-12-31';

SELECT department,
    COUNT(*) AS employee_count,
    AVG(salary) AS avg_salary,
    MAX(salary) AS max_salary,
    MIN(salary) AS min_salary
FROM employees
GROUP BY department;