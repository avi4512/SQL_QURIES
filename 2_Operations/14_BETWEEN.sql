#14.BETWEEN
#Select values in the given Range
#the values can be text,numbers or dates.

SELECT id,name
FROM student
WHERE per BETWEEN 91 AND 93;

SELECT id,name
FROM student
WHERE id BETWEEN 105 AND 108
ORDER BY name;


SELECT id,name,per
FROM student
WHERE id BETWEEN 105 AND 108  OR per BETWEEN 91 AND 03;
