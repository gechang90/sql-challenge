SELECT employees.emp_no,employees.last_name, employees.first_name,employees.gender,salaries.salary
FROM employees
INNER JOIN salaries on
employees.emp_no= salaries.emp_no;