
create database company;
use company;



--1. Insert Aman Sharma:

create table empl_2(
emp_id int primary key,
first_name varchar(50) not null,
last_name varchar(50),
email varchar(100)unique,
departemnt varchar(50),
salary int,
hire_date date

);


INSERT INTO empl_2

VALUES
(1,'Aman', 'Sharma', 'aman.sharma@email.com', 'Finance', 55000.00, '2025-07-07'),

(2,'Isha', 'Sonigra', 'isha.sonigra@email.com', 'IT', 50000.00, '2025-07-08'),

(3,'Harsh', 'Shah', 'harsh.shah@email.com', 'HR', 45000.00, '2025-07-09'),

(4,'Pooja', 'Patel', 'pooja.patel@email.com', 'Marketing', 48000.00, '2025-07-10'),

(5,'Rahul', 'Joshi', 'rahul.joshi@email.com', 'Sales', 52000.00, '2025-07-11');

SELECT * FROM empl_2;

