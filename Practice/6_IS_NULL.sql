#6.IS NULL  ---- IS NOT NULL
#A feild with a NULL value means a feild with no value

#IS NULL
  
SELECT *
FROM student
WHERE branch IS NULL;

#IS NOT NULL

SELECT *
FROM student
WHERE branch IS NOT NULL;
