#1
select employees.emp_no,employees.last_name,employees.first_name,employees.sex, salaries.salary 
from employees
INNER JOIN salaries ON employees.emp_no = salaries.emp_no;

#2
SELECT first_name,last_name,hire_date
FROM employees
WHERE hire_date BETWEEN '1986-01-01'  AND '1986-12-31'

#3
SELECT departments.dept_no, dept_manager.emp_no, departments.dept_name, employees.last_name, employees.first_name
FROM departments
INNER JOIN dept_manager ON departments.dept_no = dept_manager.dept_no
INNER JOIN employees ON dept_manager.emp_no = employees.emp_no

#4
SELECT employees.emp_no, dept_emp.dept_no, departments.dept_name, employees.last_name, employees.first_name
FROM employees
INNER JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
INNER JOIN departments ON dept_emp.dept_no = departments.dept_no

#5
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

#6
SELECT employees.emp_no,employees.first_name, employees.last_name,dept_emp.dept_no,departments.dept_name
FROM employees
INNER JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
INNER JOIN departments ON dept_emp.dept_no = departments.dept_no
WHERE departments.dept_name = 'Sales'

#7
SELECT employees.emp_no,employees.first_name, employees.last_name,dept_emp.dept_no,departments.dept_name
FROM employees
INNER JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
INNER JOIN departments ON dept_emp.dept_no = departments.dept_no
WHERE departments.dept_name = 'Sales' OR departments.dept_name = 'Development'

#8
SELECT last_name, COUNT(last_name)AS Frequency
FROM employees
GROUP BY last_name
ORDER BY COUNT(last_name) DESC