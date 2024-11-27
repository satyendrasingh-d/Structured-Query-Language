                      # ASSIGNMENT 03 #           Wrong Question 2,
use company;
# Que 01. Find the average salary of employees in each department
select distinct department, avg(salary) as 'average_salary' from employees group by department;

# Que 02. Find the total number of employees hired after 2019. 
select count(*) as 'Total employees' from employees where hire_date >2019-12-31 ;

# Que 03. List the department and the total salary of all employees in each department, order by the total salary. 
select department, sum(salary) as 'total salary' from employees group by department;

# Que 04. Find the highest salary in the finence department. 
select max(salary) as 'highest_salary' from employees where department = 'finance';

# Que 05. Get the top 3 higest paid employees
select first_name, last_name, salary from employees order by salary desc limit 3;

# Que 06. Find the department with the minimum average salary. 
select department, avg(salary) as 'average_salary' from employees group by department order by average_salary asc limit 1;

# Que 07. Display the total number of employees in each department, order by the number of employees. 
select department, count(*) as 'number_employees' from employees group by department order by number_employees ;

# Que 08. Find the average salary of employees who were hired before 2020. 
select avg(salary) as 'average salary' from employees where hire_date < '2020-01-01' ;

# Que 09. List the names of employees in the IT department ordered by hire date, with the most recently hired employees first. 
select first_name, last_name, hire_date from employees where department = 'IT' order by hire_date  ;

# Que 10. Find the sum of salaries for all employees hired after January 1, 2019 ordered by salary 
select sum(salary) as 'Total_salary' from employees where hire_date >'2019-01-01' order by salary ;

# Que 11. Get the employees with the lowest salary in the HR department. 
select emp_id, first_name, salary from employees where department = 'HR' order by salary asc limit 1 ;

# Que 12. Find the total salary paid to employees in each department, but limit the result to the top 2 highest-paying departments. 
select department, sum(salary) as 'Total salary' from employees group by department order by sum(salary) desc limit 2 ;

# Que 13. List all employees hired after 2018, ordered by salary, and show only the first 4 employees 
select emp_id, first_name, salary from employees where hire_date > 2018 order by salary limit 4; 

# Que 14. Find the highest salary in the IT department, but limit the results to the top 1 result. 
select department, max(salary) as 'highest salary' from employees where department = 'IT'; 

# Que 15. Get the average salary of employees in each department and list only departments with an average salary greater then 60000. 
select department, avg(salary) as 'average_salary' from employees group by department having avg(salary) > 60000; 

select * from employees;