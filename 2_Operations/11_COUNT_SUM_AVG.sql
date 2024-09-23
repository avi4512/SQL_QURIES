#11.COUNT() SUM() AVG()
#COUNT()--> Return no.of rows that not contain null values
#SUM()  --> Returns the total of the numeric column
#AVG()  -->Return the Average of the numeric column

#COUNT()
SELECT COUNT(name)
FROM student
WHERE id > 105;

#SUM()
SELECT SUM(per)
FROM student;

#AVG()
SELECT AVG(per)
FROM student;
