-- the following details of each employee: employee number, last name, first name, gender, and salary.
select e.emp_no, e.last_name, e.first_name, e.gender,s.salary
from employees e
join salaries s on e.emp_no = s.emp_no;

-- employees who were hired in 1986.
select first_name,last_name,hire_date
from employees
where hire_date >'1986-01-01'
and hire_date < '1986-12-31';

-- pulling the manager of each department with the following information: department number, depart
-- ment name, the manager's employee number, last name, first name, and start and end employment dates.
select m.dept_no, dep.dept_name, d.emp_no, 
e.last_name,e.first_name,d.from_date,d.to_date
from dept_manager m
inner join departments dep on dep.dept_no = m.dept_no
inner join dept_emp d on m.dept_no = d.dept_no
inner join employees e on e.emp_no = d.emp_no;