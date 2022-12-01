--create departments table
DROP TABLE IF EXISTS departments;
CREATE TABLE departments(
	dept_no VARCHAR(4) PRIMARY KEY,
	dept_name VARCHAR
);

--create titles table
DROP TABLE IF EXISTS titles;
CREATE TABLE titles(
	title_id VARCHAR(5) PRIMARY KEY,
	title VARCHAR
);

--create employees table
DROP TABLE IF EXISTS employees;
CREATE TABLE employees(
	emp_no INT PRIMARY KEY,
	emp_title_id VARCHAR(5) REFERENCES titles(title_id) NOT NULL,
	birth_date DATE,
	first_name VARCHAR,
	last_name VARCHAR,
	sex VARCHAR(1),
	hire_date DATE
);

--create salaries table
DROP TABLE IF EXISTS salaries;
CREATE TABLE salaries(
	
	emp_no INT PRIMARY KEY references employees(emp_no),
	salary INT
);

--create dept_emp table
DROP TABLE IF EXISTS dept_emp;
CREATE TABLE dept_emp(
	emp_no INT REFERENCES employees(emp_no) NOT NULL,
	dept_no VARCHAR(4) REFERENCES departments(dept_no) NOT NULL,
PRIMARY KEY (emp_no, dept_no)
);

--create dept_manager table
DROP TABLE IF EXISTS dept_manager;
CREATE TABLE dept_manager(
	dept_no VARCHAR(4) REFERENCES departments(dept_no) NOT NULL,
	emp_no INT REFERENCES employees(emp_no) NOT NULL,
	PRIMARY KEY (dept_no, emp_no)
);