CREATE TABLE titles (
	emp_no integer primary key,
	title VARCHAR(50),
	from_date VARCHAR(20),
	to_date VARCHAR(20)
);

CREATE TABLE salaries (
	emp_no integer primary key,
	salary integer,
	from_date VARCHAR(20),
	to_date VARCHAR(20)
);

CREATE TABLE employees (
	emp_no integer primary key,
	birth_date VARCHAR(20),
	first_name VARCHAR(30),
	last_name VARCHAR(30),
	gender VARCHAR(2),
	hire_date VARCHAR(20)
);

CREATE TABLE dept_manager (
	dept_no VARCHAR(30),
	emp_no integer primary key,
	from_date VARCHAR(20),
	to_date VARCHAR(20)
);

CREATE TABLE dept_emp (
	emp_no integer primary key,
	dept_no VARCHAR(30),
	from_date VARCHAR(20),
	to_date VARCHAR(20)
);

CREATE TABLE departments (
	dept_no VARCHAR(30) primary key,
	dept_name VARCHAR(30)
);