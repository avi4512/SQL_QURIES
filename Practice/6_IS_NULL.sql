--6.IS NULL  ---- IS NOT NULL
--A feild with a NULL value means a feild with no value

--1.IS NULL
SELECT *
FROM student
WHERE branch IS NULL;

--FIND THE COUNT OF NULL VALUES
SELECT COUNT(*)
FROM student
WHERE branch IS NULL;

--IS NOT NULL

SELECT *
FROM student
WHERE branch IS NOT NULL;




