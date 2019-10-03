--- QUERIES
--- #### Data Analysis
--- 1. List the following details of each employee: employee number, last name, first name, gender, and salary.
--- --- a. Join employees and salary table, using emp_no as PK
--------b. Check data to import:
SELECT * FROM employees
INNER JOIN salaries ON
employees.emp_no=salaries.emp_no;

--- 2. List employees who were hired in 1987.
SELECT * FROM employees
WHERE hire_date<'01/01/1988';

--- 3. List the manager of each department with the following information: department number, department name, 
--- the manager's employee number, last name, first name, and start and end employment dates.
--- a. Gather information from Three tables: 
SELECT * FROM dept_manager
NATURAL JOIN  employees
NATURAL JOIN departments

--- 4. List the department of each employee with the following information: employee number, last name, first name, 
--- and department name.
SELECT * FROM employees
NATURAL JOIN departments 
--- 5. List all employees whose first name is "Duangkaew" and last names begin with "P."
SELECT * FROM employees
WHERE last_name ='Duangkaew' OR last_name LIKE 'P%' 
--- 6. List all employees in the Sales department, including their employee number, last name, first name, 
--- and department name.
SELECT * FROM departments
NATURAL JOIN employees
WHERE dept_name='Sales'

--- 7. List all employees in the Sales and Development departments, including their employee number, last name, 
--- first name, and department name.
SELECT * FROM departments
NATURAL JOIN employees
WHERE dept_name ='Sales' OR dept_name='Development'

--- 8. In ascending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name, COUNT(last_name) AS "frequency" FROM employees
GROUP BY last_name
ORDER BY 
COUNT (last_name) desc;













ORDER BY 