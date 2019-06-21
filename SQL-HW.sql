create table departments (dept_no varchar, dept_name varchar);

create table dept_emp
(emp_no int, dept_no varchar, from_date date, to_date date);

create table dept_manager
(dept_no varchar, emp_no int, from_date date, to_date date);

create table employee
(emp_no int, birth_date date, first_name varchar, last_name varchar,
 gender varchar, hire_date date);
 
 create table salary
(emp_no int, salary money, from_date date, to_date date);

 create table titles
(emp_no varchar, title varchar, from_date date, to_date date);

select * from employee

select i.emp_no, i.last_name, i.first_name, i.gender, s.salary
from employee as i join salary as s on i.emp_no = s.emp_no;

select first_name, last_name, hire_date from employees
where hire_date between '1986-01-01' and '1986-12-31';


 select i.dept_no, d.dept_name, i.emp_no,
 e.last_name, e.first_name,
 i.from_date, i.to_date 
 from dept_manager as i
 join departments as d on d.dept_no = i.dept_no 
 join employee as e on e.emp_no = i.emp_no;
 
 select e.emp_no, e.last_name, e.first_name, d.dept_name
 from employee as e join dept_emp as l on l.emp_no = e.emp_no
 join departments as d on d.dept_no = l.dept_no;
 
 select first_name, last_name from employee
 where first_name = 'Hercules'
 and last_name like 'B%';
 
 select e.emp_no, e.last_name, e.first_name, d.dept_name
 from employee as e join dept_emp as l on l.emp_no = e.emp_no
 join departments as d on d.dept_no = l.dept_no
 where d.dept_name = 'Sales';
 
 select e.emp_no, e.last_name, e.first_name, d.dept_name
 from employee as e join dept_emp as l on l.emp_no = e.emp_no
 join departments as d on d.dept_no = l.dept_no
 where d.dept_name = 'Sales'
 or d.dept_name = 'Development';
 
 select distinct last_name, count(last_name) from employee
 group by last_name
 order by count desc;
 
 
 
 



