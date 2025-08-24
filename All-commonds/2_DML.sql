create database chatgtp;

CREATE TABLE employees (
    emp_id INT ,
    name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10,2),
    hire_date DATE
);

INSERT INTO employees
VALUES
(101, 'John', 'HR', 40000, '2020-01-15'),
(102, 'Avinash', 'IT', 55000, '2019-11-20'),
(103, 'Priya', 'Sales', 45000, '2021-06-10'),
(104, 'Ramesh', 'IT', 60000, '2018-03-05'),
(105, 'Sneha', 'HR', 42000, '2022-08-01');

----------------------- 1.SELECT----------------------------
-- 1.List all employees working in the IT department.
select *
from employees
where department = "IT";

-- 2. Show names and salaries of employees earning more than 45,000.
select name,salary
from employees
where salary > 45000;

-- 3. List employees hired after 1st Jan 2020.
select *
from employees
where hire_date >  '2020-01-01';

-- 4. Show all employees sorted by salary (highest first).
select *
from employees
order by salary desc;

-- 5. Count how many employees are in each department.
select department,count(*) as COUNT
from employees
group by department;


---------------------------- 2.INSERT ---------------------------

-- 1. Insert Kiran (106, Finance, 50000, 2023-01-01)
insert into employees
value(106,"kiran", "Finance", 50000, '2023-01-01');

-- 2.Insert two more employees (example: 107 & 108).
insert into employees
values
(107,'deepa','IT',48000,'2023-02-01'),
(108,'Raj','Sales',47000,'2023-03-15');


------------------------------ 3. UPDATE Queries ------------------------------

-- 1. Increase salary of all HR employees by 10%
update employees
set salary = (salary * 0.1) + salary
where department = "HR";

-- 2. Change Priya’s department to Marketing
update employees
set department = "Marketing"
where name = "Priya";


-- 3. Set salary = 65000 for Avinash
update employees
set salary = 65000
where name = "Avinash";

--------------------------------- 4. DELETE Queries ------------------

 -- 1.Delete all employees from Sales
delete from employees
where department = "Sales";
 
 -- 2.Delete the employee with the lowest salary
 delete from employees
 where salary  = (
 select min_salary 
 from(
 select min(salary) as min_salary from employees
 )as t
 );
 
 -- 3.Delete employees hired before 2020
 delete from employees
 where hire_date < "2020-01-01";









