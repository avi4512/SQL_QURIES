#14.IN operation
#it is short hand for multiple OR conditions
  
#IN
SELECT *
FROM student
WHERE branch IN('CSE');

#NOT IN
SELECT *
FROM student
WHERE branch NOT IN('eee');

#Multiple Conditions
SELECT *
FROM student
WHERE branch IN('CSE') OR branch NOT IN('eee');
