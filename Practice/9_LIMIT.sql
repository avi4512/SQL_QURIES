#9.LIMIT clause
#it is used to specify no.of records to be return 

SELECT id,name
FROM student
LIMIT 5;

#OFF SET(optional)
#It skip no.of rows from the starting

SELECT id,name
FROM student
LIMIT 5 OFFSET 3;
