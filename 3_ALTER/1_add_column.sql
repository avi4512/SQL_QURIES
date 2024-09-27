use avi;

CREATE TABLE modifier(
id INT,
name CHAR(20),
branch CHAR(10));

						#ALTER
#1.ADD new COLUMN
ALTER TABLE modifier
ADD per FLOAT;
