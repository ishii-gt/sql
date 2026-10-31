
-- question : create employee(emp_id , firstname(not null), lastname,email(unique),salary, enrolDate(current_timestamp),dept_id
-- 10 enttries 

use company;
CREATE TABLE emplyoee (
    emp_id INT PRIMARY KEY,
    firstname VARCHAR(50) NOT NULL,
    lastname VARCHAR(50),
    email VARCHAR(100) UNIQUE,
    salary DECIMAL(10,2),
    enrolData DATETIME DEFAULT CURRENT_TIMESTAMP,
    dept_id INT
);

INSERT INTO emplyoee(emp_id,firstname,lastname,email,salary,dept_id)
VALUES
(1,'disha','sonigra','disha@101.gmail.com',25000,1),
(2, 'harsh','shah','harsh@102.gmail.com',27000,3),
(3,'ashish','joshi','ashish@103.gmail.com',29000,2),
(4,'prem','sonigra','prem@104.gmail.com',30000,3),
(5,'Pari','Sonigra','pari105@gmail.com',34000,3),
(6,'ishii','khara','ishii106@gmail.com',22000,1),
(7,'pooja','modi','pooja107@gmail.com',36000,4),
(8,'vishvdeep','jadeja','vishvdeep108@gmail.com',28000,2),
(9,'ajay','khara','ajay109@gmail.com',44000,4),
(10,'Amit', 'Joshi', 'amit104@gmail.com', 35000, 3);

SELECT * FROM emplyoee;