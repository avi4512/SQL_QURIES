CREATE DATABASE joins;

USE joins;

CREATE TABLE inner_join(
id INT,
name CHAR(10),
dept_id INT);

INSERT INTO inner_join
VALUES
(101,'Avi',1),
(102,'Rama',2),
(103,'Hanuma',1),
(104,'Shiva',3),
(105,'Karna',5);

CREATE TABLE department(
dept_id INT,
dept_name CHAR(10));

INSERT INTO department
VALUES 
(1,'CSE'),
(2,'ECE'),
(3,'MECH'),
(4,'EEE');

SELECT *
FROM inner_join;

SELECT *
FROM department;


--1.inner join or (natural join)
SELECT id,name,inner_join.dept_id,dept_name
FROM inner_join
INNER JOIN department ON inner_join.dept_id = department.dept_id;

--2 left join
SELECT id,name,inner_join.dept_id,dept_name
FROM inner_join
LEFT JOIN department ON inner_join.dept_id = department.dept_id;

--3 right join
SELECT id,name,inner_join.dept_id,dept_name
FROM inner_join
RIGHT JOIN department ON inner_join.dept_id = department.dept_id;


--4 full join
SELECT id,name,inner_join.dept_id,dept_name
FROM inner_join
FULL JOIN department ON inner_join.dept_id = department.dept_id;

CREATE TABLE self_join(
employee_id INT,
name CHAR(10),
manager_id INT);

INSERT INTO self_join
VALUES
(1,'Avi',3),
(2,'Rama',3),
(3,'Hanuma',5),
(4,'Shiva',2),
(5,'karna',4);

SELECT *
FROM self_join;

SELECT e.employee_id,m.name
FROM self_join e
JOIN self_join m ON
e.manager_id = m.employee_id
ORDER BY e.employee_id;
