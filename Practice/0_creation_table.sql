CREATE DATABASE avi;

show databases;
use avi;

create table student
(id int,
name char(10),
branch char(10),
per float);

--For the float values ---> DECIMAL(3,2) 
--it holds total 3 numbers after decimal it holds 2 numbers 
--ex (8.98)

desc student;

INSERT INTO student
VALUES
(101,'Avi','cse',90),
(102,'Rama','ece',92),
(103,'Hanuma','ece',91),
(104,'Shiva','mech',94),
(105,'vishnu','eee',90),
(106,'Bramha','eee',90),
(107,'Karna','cse',91),
(108,'Arjuna','mech',88);

















