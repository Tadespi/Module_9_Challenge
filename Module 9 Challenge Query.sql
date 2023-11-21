-- Employee list
SELECT employees.emp_no, employees.last_name, employees.first_name,
	employees.sex, salaries.salary
FROM employees
JOIN salaries
ON employees.emp_no = salaries.emp_no;


-- Employees hired in 1986
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1987-01-01';


-- Manager of each department list
SELECT departments.dept_no, departments.dept_name, dept_manager.emp_no,
	employees.last_name, employees.first_name
FROM departments
JOIN dept_manager
ON departments.dept_no = dept_manager.dept_no
JOIN employees
ON dept_manager.emp_no = employees.emp_no;


-- Department number for each employee
SELECT dept_emp.emp_no, employees.last_name, employees.first_name,
	departments.dept_name, departments.dept_no
FROM dept_emp
JOIN employees
ON dept_emp.emp_no = employees.emp_no
JOIN departments
ON dept_emp.dept_no = departments.dept_no;


-- Hercules list
SELECT employees.first_name, employees.last_name, employees.sex
FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';


-- Sales Department
SELECT dept_emp.emp_no, employees.last_name, employees.first_name,
	departments.dept_name
FROM dept_emp
JOIN employees
ON dept_emp.emp_no = employees.emp_no
JOIN departments
ON dept_emp.dept_no = departments.dept_no
WHERE departments.dept_name = 'Sales';


-- Sales and Development
SELECT dept_emp.emp_no, employees.last_name, employees.first_name,
	departments.dept_name
FROM dept_emp
JOIN employees
ON dept_emp.emp_no = employees.emp_no
JOIN departments
ON dept_emp.dept_no = departments.dept_no
WHERE departments.dept_name = 'Sales'
OR departments.dept_name = 'Development';


-- Frequency Counts
SELECT last_name,
COUNT (last_name) AS "frequency"
FROM employees
GROUP BY last_name
ORDER BY 
COUNT(last_name) DESC;