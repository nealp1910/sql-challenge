-- Drop departments table if exists
DROP TABLE departments;

-- Create departments table
CREATE TABLE departments (
	dept_no VARCHAR PRIMARY KEY,
	dept_name VARCHAR
);

-- View department table
SELECT * FROM departments;
--------------------------------------------------------------------------
-- Drop titles table if exists
DROP TABLE titles;

-- Create titles table
CREATE TABLE titles (
	title_id VARCHAR PRIMARY KEY, 
	title VARCHAR
);

-- View titles table
SELECT * FROM titles;
--------------------------------------------------------------------------
-- Drop employees table if exists
DROP TABLE employees

-- Create employees table
CREATE TABLE employees (
	emp_no INT PRIMARY KEY,
	emp_title_id VARCHAR, 
	birth_date VARCHAR,
	first_name VARCHAR,
	last_name VARCHAR,
	sex VARCHAR,
	hire_date VARCHAR,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

-- View employees table
SELECT * FROM employees;
--------------------------------------------------------------------------
-- Drop department employee table if exists
DROP TABLE dept_emp;

-- Create department employee table
CREATE TABLE dept_emp (
	emp_no INT,
	dept_no VARCHAR,
	PRIMARY KEY (emp_no, dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

-- View department employee table
SELECT * FROM dept_emp;
--------------------------------------------------------------------------
--Drop salaries table if exists
DROP TABLE salaries;

-- Create salaries table
CREATE TABLE salaries (
	emp_no INT PRIMARY KEY,
	salary INT,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

-- View salaries table
SELECT * FROM salaries;
--------------------------------------------------------------------------
-- Drop department manager table if exists
DROP TABLE dept_manager;

-- Create department manager table
CREATE TABLE dept_manager (
	dept_no VARCHAR,
	emp_no INT,
	PRIMARY KEY (dept_no, emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

-- View department manager table
SELECT * FROM dept_manager;