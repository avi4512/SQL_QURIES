use avi;

CREATE TABLE modifier(
id INT,
name CHAR(20),
branch CHAR(10));

						#ALTER
#1.ADD new COLUMN
ALTER TABLE modifier
ADD per FLOAT;

#2.DELETE COLUMN
ALTER TABLE modifier
DROP branch;

#3.Changing Data Type of the Column
ALTER TABLE modifier
MODIFY COLUMN per INT;

#4.adding NOT NULL
ALTER TABLE modifIer
MODIFY COLUMN id INT NOT NULL;


#5.UNIQUE
ALTER TABLE modifier
ADD CONSTRAINT UNIQUE(ph_no);

#6.PRIMARY KEY
ALTER TABLE modifier
ADD CONSTRAINT PRIMARY KEY(id);

#7.CHECK
#Adding condition
ALTER TABLE modifier
ADD CONSTRAINT CHECK(per > 50);

#8.Removing UNIQUE key
ALTER TABLE modifier
DROP INDEX ph_no;

#9.Removing Primary Key
ALTER TABLE modifier
DROP PRIMARY KEY;

DESC modifier;

