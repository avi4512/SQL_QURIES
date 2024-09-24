#12.LIKE
#it is used in WHERE clause to search for the specific "Pattern"

#Starts with
SELECT *
FROM student
WHERE name LIKE 's%';

#Ends with
SELECT *
FROM student
WHERE name LIKE '%a';

#in Between 
SELECT *
FROM student
WHERE name LIKE '%rn%';

#Start with H and end with a
SELECT *
FROM student
WHERE name LIKE 'h%a';

#13.WildCards
#it is used to substitute one or more Charecters in string

SELECT *
FROM student
WHERE name LIKE 's_i_a';

SELECT *
FROM student
WHERE name LIKE 'ka___';
