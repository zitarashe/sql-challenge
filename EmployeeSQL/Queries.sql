
select e.emp_no, last_name, first_name, sex, salary from employees as e 
inner join salaries as s on e.emp_no = s.emp_no;

select first_name, last_name, hire_date from employees
where hire_date like '%1986';

select d.dept_no, dept_name, e.emp_no, last_name, first_name 
from employees e, departments d, dept_manager dm 
where e.emp_no = dm.emp_no and d.dept_no = dm.dept_no and emp_title_id = 'm0001';

select d.dept_no, e.emp_no, last_name, first_name, dept_name
from employees e, departments d, dept_emp de 
where e.emp_no = de.emp_no and d.dept_no = de.dept_no;

select first_name, last_name, sex from employees
where first_name = 'Hercules' and last_name like 'B%';

select e.emp_no, last_name, first_name
from employees e, departments d, dept_emp de 
where e.emp_no = de.emp_no and d.dept_no = de.dept_no and d.dept_name = 'Sales';

select e.emp_no, last_name, first_name, dept_name
from employees e, departments d, dept_emp de 
where e.emp_no = de.emp_no and d.dept_no = de.dept_no and d.dept_name in('Sales', 'Development');

select last_name, count(*) as frequency from employees
group by last_name;
