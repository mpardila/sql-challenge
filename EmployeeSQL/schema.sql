DROP TABLE salaries;
DROP TABLE employees;
DROP TABLE dept_manager;
DROP TABLE dept_emp;
DROP TABLE titles;
DROP TABLE departments;

-- Create all tables

CREATE TABLE departments (
    dept_no VARCHAR(10) NOT NULL PRIMARY KEY,
    dept_name VARCHAR(255) NOT NULL
);

CREATE TABLE titles ( 
	title_id VARCHAR NOT NULL PRIMARY KEY, 
	title VARCHAR NOT NULL 
); 

CREATE TABLE dept_emp (
    emp_no INT NOT NULL,
    dept_no VARCHAR(10) NOT NULL,
    PRIMARY KEY (emp_no, dept_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE dept_manager (
    dept_no VARCHAR(10) NOT NULL,
	emp_no INT NOT NULL PRIMARY KEY,
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE employees (
    emp_no INT NOT NULL PRIMARY KEY,
    emp_title_id VARCHAR(10) NOT NULL,
    birth_date DATE NOT NULL,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    sex VARCHAR(10) NOT NULL,
	hire_date DATE NOT NULL,
    FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

CREATE TABLE salaries (
    emp_no INT NOT NULL,
    salary INT NOT NULL,
    PRIMARY KEY (emp_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

-- View all tables after data import
SELECT * FROM departments;
SELECT * FROM titles;
SELECT * FROM dept_emp;
SELECT * FROM dept_manager;
SELECT * FROM employees;
SELECT * FROM salaries;