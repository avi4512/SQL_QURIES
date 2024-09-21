#3.AND ,OR , NOT
#The where clause can be combined with the AND,OR,NOT
#AND,OR is used to filter the record more than one condition

#AND
SELECT *
FROM student
WHERE per > 90 AND branch = 'cse';

#OR
SELECT *
FROM student
WHERE per > 90 OR branch = 'cse';

#NOT
SELECT *
FROM student
WHERE NOT branch = 'cse' AND NOT branch = 'eee';
