--create a new table
CREATE TABLE departments (
  dept_no VARCHAR(30) NOT NULL,
  dept_name VARCHAR(30) NOT NULL);
  
-- Create a new table
CREATE TABLE dept_emp (
  emp_no INT,
  dept_no VARCHAR(10) NOT NULL,
  from_date VARCHAR(30) NOT NULL,
  to_date VARCHAR(30) NOT NULL
);
-- create dept_manager
CREATE TABLE dept_manager(
  dept_no VARCHAR(10) NOT NULL,
  emp_no INT,
  from_date VARCHAR(30) NOT NULL,
  to_date VARCHAR(30) NOT NULL
);
-- create employees
CREATE TABLE employees(
  emp_no INT,
  birth_date VARCHAR(20)NOT NULL,
  first_name VARCHAR(30)NOT NULL,
  last_name VARCHAR(30)NOT NULL,
  gender VARCHAR(10)NOT NULL,
  hire_date VARCHAR(20) NOT NULL  
);
--create salaries
CREATE TABLE salaries (
  emp_no INT,
  salary INT,
  from_date VARCHAR(30) NOT NULL,
  to_date VARCHAR(30) NOT NULL
);
--create tittle
CREATE TABLE title (
  emp_no INT,
  title VARCHAR(30),
  from_date VARCHAR(30) NOT NULL,
  to_date VARCHAR(30) NOT NULL
);