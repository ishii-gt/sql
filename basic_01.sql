-- sql : rdbms(releational database management system) , nrdbms


-- ddl(data defination language) (create , alter , drop) , 
-- dml(data manupulatioina language)(update , insert , delete, truncate) , 
-- dcl(data control language)(grant , revoke) , 
-- tcl(transaction control language)(commit , roolback)
-- dql(data query language)(select)


create database company;
use company;

-- columnName dataType constraint(primary key , foreign key, not null , unique, check)
CREATE TABLE department	(
dept_id int primary key ,
dept_name varchar(50) not null
);

select * from department;

insert into department
values
(1, 'HR');

insert into department(dept_id,dept_name) 
values 
(2, 'IT'),
(3,'FINANCE'),
(4,'MARKETING');


-- question : create employee(emp_id , firstname(not null), lastname,email(unique),salary, enrolDate(current_timestamp),dept_id
-- 10 enttries 



-- condition

select dept_name from department where dept_id = 3;

-- dml
select * from department;
update department set dept_name = 'FINANCE' where dept_id = 3;






