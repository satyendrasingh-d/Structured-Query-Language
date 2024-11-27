create database joinf;
use joinf;
create table employee(emp_id int, emp_name varchar(100), dept_id int, salary int);
insert into employee(emp_id, emp_name, dept_id, salary)
values(1,'Alice',101,6000),
	  (2,'Bob',102,7000),
	  (3,'Charlie',103,8000),
      (4,'David',104,7500),
      (5,'Eva',105,8500);
select * from project ;
create table Department(dept_id int, dept_name varchar(50));
insert into Department(dept_id, dept_name)
values(101,'HR'),
      (102,'Sales'),
      (103,'IT'),
      (104,'Marketing');
	
create table Project(project_id int, project_name varchar(100), dept_id int) ;
insert into Project(project_id, project_name, dept_id)
values(1,'Project A',101),
      (2,'Project B',102),
      (3,'Project C',103),
      (4,'Project D',104);
      
# 1. Retrieve the employees name and department name for each employees. 
select employee.emp_name as 'Employees_name',Department.dept_name as 'Department Name'
from employee
inner join department
on employee.dept_id = department.dept_id;

# Que 2. Find the employees who work in 'Sales' department. 
select employee.emp_id, employee.emp_name, employee.Salary, department.dept_name 
from employee 
inner join department
on employee.dept_id = department.dept_id where dept_name = 'Sales';

# Que 3. List the Project names along with the department Name. 
select department.dept_name, project.project_name 
from department
inner join project
on department.dept_id = project.dept_id;

# Que 4. Fint the employees (Name) who have salary greater then 7500 and who are working on a project in IT department. 
select employee.emp_name, employee.Salary, department.dept_name
from employee
inner join department
on employee.dept_id = department.dept_id
where dept_name = 'IT' and salary> 7500;

# Que 5. Find the numbers of employees in each department. 
select department.dept_name,count(emp_id)
from employee
inner join department
on employee.dept_id = department.dept_id group by dept_name ;

# Que 6. Get Total Salary of each department. 
select department.dept_name, sum(employee.salary)
from employee
inner join department
on employee.dept_id = department.dept_id group by dept_name ;

# Que 7. Find all department that have no employees. 
select d.dept_name, count(e.emp_id)
from department d
left join employee e
on d.dept_id=e.dept_id
group by dept_name; 

select d.dept_name, count(e.emp_id)
from department d
left join employee e
on d.dept_id=e.dept_id
group by dept_name
having count(e.emp_id)=0; 

select d.dept_name, count(e.emp_id)
from employee e
right join department d
on e.dept_id=d.dept_id
group by dept_name; 

# Que 8. List the employees names and their respective projesct names. 
select employee.emp_name, project.project_name 
from employee
inner join project
on employee.dept_id = project.dept_id ;

# Que 9. Find the employees and project name for employees in 'HR' department. 
select employee.emp_name, project.project_name
from employee
right join department
on employee.dept_id = department.dept_id
left join project
on employee.dept_id = project.dept_id where dept_name = 'HR';

# Que 10. Retrive department with more then 1 Project assigned. 
select department.dept_name, count(project.project_id)
from department
inner join project
on department.dept_id = project.dept_id
group by department.dept_name having count(project.project_id) > 1;

# Que 11. Find employees who work in department that are not assigned any projects. 
select d.dept_name, count(emp_id), count(project_name)
from department d
left join employee e
on d.dept_id = e.dept_id
left join project p
on d.dept_id = p.dept_id group by d.dept_name having count(project_name) =2 ;

# Que 12. List the department along with the number of employees and projects. 
select d.dept_name, count(e.emp_id), count(p.project_name)
from Department d
left join employee e
on d.dept_id = e.dept_id
left join project p
on d.dept_id = p.dept_id
group by d.dept_name ;

# Que 13. Get the department name and total salary spent on employees for departments with at least 2 employees.  
select d.dept_name, sum(e.salary) as 'Total Salary'
from employee e
inner join department d
on e.dept_id = d.dept_id
group by d.dept_name having count(e.emp_id) >= 2 ;

