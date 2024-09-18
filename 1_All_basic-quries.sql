CREATE DATABASE Details;

USE Details;

CREATE TABLE tabel1(id_no int,
std_name CHAR(20) , 
clg CHAR(20), 
cgpa float);

INSERT INTO tabel1
VALUES(100,'AVi','KLU',8.98),
(101,'Hnauma','Ayodhya',9.2),
(102,'Rama','Lepakshi',9.3),
(103,'Siva','kilasam',9.3),
(104,'Vamsi','KLU',8.8),
(105,'Karthik','KLU',8.3),
(106,'Surya','KLU',9.3),
(107,'Chenchu','KLU',9.1),
(108,'Prudhvi','KLU',8.7),
(109,'Mukesh','KLU',8.3),
(110,'Lohith','klu',8.6),
(111,'Malli','klu',8.3);


--1.select statement
--to select all the columns in the table
SELECT *
FROM tabel1;

-- to select the specific columns
SELECT id_no,std_name
FROM tabel1;

-- Retriving the specific rows without any repetation
SELECT DISTINCT *
FROM tabel1;

--Returning the unique rows count
SELECT COUNT(DISTINCT id_no)
FROM tabel1;


--2.WHERE
--it is used to filter the records

SELECT *
FROM tabel1
WHERE id_no > 105;

--3.AND OR NOT
--WHERE clause is combined with the AND OR NOT operators
--AND OR is used to filter the records more than one condition

SELECT *
FROM tabel1
WHERE id_no > 105 AND cgpa > 8.5;

SELECT *
FROM tabel1
WHERE id_no > 105 OR cgpa > 8.5;

SELECT *
FROM tabel1
WHERE NOT id_no > 105;

--4 ORDER BY
--it is used to sort the result-set
--(ASC) for ascending <--- [Default], (DESC) for descending order

SELECT *
FROM tabel1
ORDER BY std_name;

SELECT *
FROM tabel1
ORDER BY cgpa DESC

SELECT id_no,std_name
FROM tabel1
ORDER BY std_name DESC;

--9 INSERT INTO
--insert new record into the table
INSERT INTO tabel1(id_no,std_name,clg,cgpa)
VALUES(112,'Karna','Baratham',9.3)


--10 NULL values

SELECT *
FROM tabel1
WHERE std_name IS NULL;

--for multiple columns
SELECT *
FROM tabel1
WHERE std_name IS NULL AND std_name IS NULL;

--NOT NULL
SELECT *
FROM tabel1
WHERE (std_name) IS NOT NULL;


--11 UPDATE
--it is used to modify the records
UPDATE tabel1
SET std_name = 'Hanuma'
WHERE id_no = 101;

UPDATE tabel1
SET cgpa = 9.0, std_name = 'Avi'
WHERE id_no = 100;

UPDATE tabel1
SET std_name = 'Hanuma'
WHERE id_no <= 101;

--12 DELETE

DELETE tabel1
WHERE std_name = 'Avi';

-- 14 MIN() MAX()

SELECT MIN(cgpa) AS min_cgpa
FROM tabel1;

SELECT MAX(cgpa) AS max_cgpa
FROM tabel1; 

--15 COUNT() AVG() SUM()

SELECT COUNT(id_no)
FROM tabel1
WHERE id_no > 105;

SELECT AVG(cgpa) AS average_cgpa
FROM tabel1;

SELECT SUM(cgpa) AS sum_all_cgpa
FROM tabel1;














