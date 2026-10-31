use organizations;


select * from emplyoeedetailt;
select * from department;

insert into department
values
(5,'General');

exec sp_rename 'emplyoee' , 'employee';  -- renaming a table 

select * from employeedetailt;

																		

--full join or full outer join
select * from employeedetailt e full join department d 
on e.dept_id = d.dept_id;


--Find employees in departments that have more than 2 employees


select * from employeedetailt group by dept_id;

select * from employeedetailt;

select dept_id, count(emp_id) from employeedetailt group by dept_id;

select dept_id from employeedetailt group by dept_id having count(dept_id) >= 2;
select * from department 
where dept_id in 
(select dept_id from employeedetailt 
group by dept_id 
having count(dept_id) >= 2);



-- string function : len , trim,ltrim, 
--rtrim, 
--replace,
--substring, lower, 
--upper,
--string_agg

select upper('nothing') as Upper, 
lower('NotHiNg') as Lower, 
len('hello') as Len,
substring('Microsoft',1, 5) as SubString;
select upper(firstname) from employee;
select string_agg(firstname, ' | ') as Names from employee;










create database meta;
use meta;

create table department(
	dept_id int identity(101,10) primary key,
	dept_name varchar(50) not null unique
);

insert into department(dept_name)
values
('HR'),
('FINANCE'),
('IT'),
('MARKETING'),
('General');

select * from department order by dept_id;

create table employeedetailt(
emp_id int identity(1001,1) primary key,
emp_first_name varchar(50) not null,
emp_last_name varchar(50) default 'NoGiven' ,
emp_email varchar(50) unique,
emp_salary decimal(10,2) check(emp_salary >= 10000),
emp_joinning_date datetime default current_timestamp,
emp_dept_id int,
foreign key(emp_dept_id) references department(dept_id)
);

insert into employeedetailt
(emp_first_name, emp_email, emp_salary,emp_dept_id)
values
('user1', 'user1@gmail.com', 450000,141);

select * from employee;  -- '2026-07-17 10:00:00'

-- advance concept 
-- store procedure , function , trigger, event
-- window function , rtc
-- complex joining , json data , dcl , tcl  





-- view 

select * from employee;

select firstname, salary , dept_id from employee ;


create view empInfo as
select firstname , salary , dept_id 
from employee;

select * from empInfo;


alter view empInfo as 
select firstname , salary , dept_id , enroldate
from employee;


select * from empInfo;



-- index 


select * from employee;


set showplan_all on;
select * from employee where firstname = 'harsh';
select *  from employee where emp_id = 4;
set showplan_all off;


create clustered index firstName 
on employee(firstname);

-- nonclustered

-- exec sp_helpindex 'employee';




-- tcl : transaction control language 
-- commit , rollback


select * from employee;
update employee set salary = salary + 2000 where firstname = 'prem';


begin transaction;
update employee set salary = salary + 2000 where firstname = 'prem';					
rollback;
begin transaction;
commit;


begin transaction;
delete from employee;
rollback;
commit;


select * from employee;

--begin transaction ;s
--update employee set salary = 50000 where emp_id = 1;
--save transaction s1;
--update employee set salary = 45000 where emp_id = 2;
--rollback;
--rollback transaction s1;
--select * from employee;






