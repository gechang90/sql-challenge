--Q1 answer:

SELECT employees.emp_no,employees.last_name, employees.first_name,employees.gender,salaries.salary
FROM employees
INNER JOIN salaries on
employees.emp_no= salaries.emp_no;


--Q2 answer:

SELECT * FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';


--Q3 answer:

SELECT employees.emp_no,dept_manager.dept_no,departments.dept_name,employees.first_name,employees.last_name,dept_manager.from_date,dept_manager.to_date
FROM dept_manager
INNER JOIN employees ON
dept_manager.emp_no = employees.emp_no
INNER JOIN departments ON
dept_manager.dept_no = departments.dept_no;

--Q4 answer

SELECT employees.emp_no,employees.last_name,employees.first_name,departments.dept_name
FROM dept_emp
INNER JOIN employees ON
dept_emp.emp_no = employees.emp_no
INNER JOIN departments ON
dept_emp.dept_no = departments.dept_no;

--Q5 answer

SELECT employees.first_name,employees.last_name
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%'

--Q6 answer

SELECT employees.emp_no,employees.last_name,employees.first_name,departments.dept_name
FROM dept_emp
INNER JOIN employees ON
dept_emp.emp_no = employees.emp_no
INNER JOIN departments ON
dept_emp.dept_no = departments.dept_no
WHERE dept_name = 'Sales';

--Q7 answer

SELECT employees.emp_no,employees.last_name,employees.first_name,departments.dept_name
FROM dept_emp
INNER JOIN employees ON
dept_emp.emp_no = employees.emp_no
INNER JOIN departments ON
dept_emp.dept_no = departments.dept_no
WHERE dept_name = 'Sales' OR dept_name = 'Development';

--Q8 answer

SELECT COUNT(last_name), last_name
FROM employees
GROUP BY last_name
ORDER BY COUNT(last_name) DESC;
