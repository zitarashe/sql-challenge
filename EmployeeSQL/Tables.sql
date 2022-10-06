Begin;
-- Drop tables

Drop table if exists dept_emp;
Drop table if exists dept_manager;
Drop table if exists public.departments;
Drop table if exists salaries;
Drop table if exists employees;
Drop table if exists titles;


-- Create tables

CREATE TABLE public.departments(
	dept_no VARCHAR(30) NOT NULL,
	dept_name VARCHAR(30) NOT NULL,
	primary key (dept_no)
);

CREATE TABLE public.titles (
  	title_id VARCHAR(30) NOT NULL,
  	title VARCHAR(30) NOT NULL,
	primary key (title_id)
);

CREATE TABLE public.employees (
	emp_no text NOT NULL,
	emp_title_id VARCHAR(30) NOT NULL,
	birth_date text NOT NULL,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	sex text NOT NULL,
	hire_date text NOT NULL,
	primary key (emp_no),
	foreign key (emp_title_id) references titles(title_id)
);

CREATE TABLE public.salaries(
 emp_no text NOT NULL,
  salary integer NOT NULL,
	foreign key (emp_no) references employees(emp_no)
);

CREATE TABLE public.dept_emp(
	emp_no text NOT NULL,
	dept_no VARCHAR(30) NOT NULL,
	primary key (emp_no, dept_no),
	foreign key (emp_no) references employees (emp_no),
	foreign key (dept_no) references departments
);

CREATE TABLE public.dept_manager(
	dept_no VARCHAR(30) NOT NULL,
	emp_no text NOT NULL,
	primary key (emp_no, dept_no),
	foreign key (dept_no) references departments(dept_no),
	foreign key (emp_no) references employees(emp_no)
);
COMMIT;