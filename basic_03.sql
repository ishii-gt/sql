
-- like , limit 

use company;



select * from emplyoee;
-- clauses : order by , groupby (aggregate function), join(inner join , left join , right join , full join)
select * from emplyoee order by salary asc;
select * from emplyoee order by salary desc;

select firstname from emplyoee order by enrolData desc;
select * from emplyoee order by enrolData desc;

select top 1 * from emplyoee order by enrolData desc;


select * from emplyoee;

select * from emplyoee where firstname like 'A%';
select * from emplyoee where firstname like '%i%';
select * from emplyoee where firstname like '%[AK]';
select * from emplyoee where firstname like '%AK%';
select * from emplyoee where firstname like '_n%';

-- aggregate : sum , avg , count, min , max

select sum(salary) as Total from emplyoee ;
select avg(salary) as Avg from emplyoee;
select max(salary) as Max , min(salary) as Min , count(*) as TotalEmployee from emplyoee;



-- sub query 
select max(salary) from emplyoee;
select * from emplyoee where salary = (select max(salary) from emplyoee );
select * from Department;

-- group by 

select max(salary), avg(salary), dept_id from emplyoee  group by dept_id;


-- joining  (inner join ), (right join), (left join) , 

select * from emplyoee;
select * from Department;
insert into Department(dept_name)
values
('General');

select * from emplyoee inner join Department on emplyoee.dept_id = Department.dept_id;

select * from emplyoee right join Department on emplyoee.dept_id = Department.dept_id;

select * from emplyoee left join Department on emplyoee.dept_id = Department.dept_id;


select * from emplyoee e left join Department d on e.dept_id = d.dept_id;




select max(e.salary) as Max, avg(e.salary) as Avg, e.dept_id, d.dept_name
from emplyoee e left join Department d 
on e.dept_id = d.dept_id
group by e.dept_id, d.dept_name;



select dept_id  from emplyoee 
group by dept_id;


select * from emplyoee where salary > 40000 and dept_id = 3 or dept_id = 2; 

select * from emplyoee where salary > 40000 and dept_id in (3,2);

select dept_name from department where dept_id in (select dept_id  from emplyoee 
group by dept_id);



 






