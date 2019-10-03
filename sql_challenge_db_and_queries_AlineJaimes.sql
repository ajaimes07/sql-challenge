-- Aline Jaimes- SQL-Challenge
-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/quLI6p
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).
-- Simple Conceptual ERD
CREATE TABLE "employees" (
    "emp_no" int   NOT NULL,
    "birth_date" date   NOT NULL,
    "first_name" text   NOT NULL,
    "last_name" text   NOT NULL,
    "gender" text  NOT NULL,
    "hire_date" date   NOT NULL,
    CONSTRAINT "pk_employees" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "salaries" (
    "emp_no" int   NOT NULL,
    "salary" int   NOT NULL,
    "from_date" date   NOT NULL,
    "to_date" date   NOT NULL,
    CONSTRAINT "pk_salaries" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "titles" (
    "emp_no" int   NOT NULL,
    "title" text   NOT NULL,
    "from_date" date   NOT NULL,
    "to_date" date   NOT NULL,
    CONSTRAINT "pk_titles" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "departments" (
    "dep_no" text   NOT NULL,
    "dept_name" text   NOT NULL
);

CREATE TABLE "dept_emp" (
    "emp_no" int   NOT NULL,
    "dept_no" text   NOT NULL,
    "from_date" date   NOT NULL,
    "to_date" date   NOT NULL,
    CONSTRAINT "pk_dept_emp" PRIMARY KEY (
        "dept_no"
     )
);

CREATE TABLE "dept_manager" (
    "dept_no" text   NOT NULL,
    "emp_no" int NOT NULL,
	"from_date" date   NOT NULL,
    "to_date" date   NOT NULL,
    CONSTRAINT "pk_dept_manager" PRIMARY KEY (
        "emp_no"
     )
);

--- QUERIES
--- #### Data Analysis
--- 1. List the following details of each employee: employee number, last name, first name, gender, and salary.
--- --- a. Join employees and salary table, using emp_no as PK
--------b. Check data to import:
SELECT * FROM employees
INNER JOIN salaries ON
employees.emp_no=salaries.emp_no;

--- 2. List employees who were hired in 1987.
<<<<<<< HEAD
SELECT emp_no FROM employees
=======
SELECT * FROM employees
>>>>>>> 83fff1fbea37eb8019b0db462c79cca4a18cbd15
WHERE hire_date<'01/01/1988';

--- 3. List the manager of each department with the following information: department number, department name, 
--- the manager's employee number, last name, first name, and start and end employment dates.
<<<<<<< HEAD
SELECT employees.emp_no, employees.last_name, employees.first_name
FROM employees
-- SELECT dept_manager.emp_no, dept_manager.dept_no, dept_manager.from_date, dept_manager.to_date
--FROM dept_manager
INNER JOIN dept_manager ON 
employees.emp_no=dept_manager.emp_no;
--- 4. List the department of each employee with the following information: employee number, last name, first name, 
--- and department name.
SELECT * FROM employees
INNER JOIN departments ON
employees.emp_no=departments.dep_no;
=======
--- a. Gather information from Three tables: 
SELECT * FROM dept_manager
NATURAL JOIN  employees
NATURAL JOIN departments

--- 4. List the department of each employee with the following information: employee number, last name, first name, 
--- and department name.
SELECT * FROM employees
NATURAL JOIN departments 
>>>>>>> 83fff1fbea37eb8019b0db462c79cca4a18cbd15
--- 5. List all employees whose first name is "Duangkaew" and last names begin with "P."
SELECT * FROM employees
WHERE last_name ='Duangkaew' OR last_name LIKE 'P%' 
--- 6. List all employees in the Sales department, including their employee number, last name, first name, 
--- and department name.
<<<<<<< HEAD
SELECT * FROM employees
INNER JOIN dept_manager ON
employees.emp_no=dept_manager.emp_no;
SELECT * FROM departments 
WHERE dept_name ='Sales' 
=======
SELECT * FROM departments
NATURAL JOIN employees
WHERE dept_name='Sales'
>>>>>>> 83fff1fbea37eb8019b0db462c79cca4a18cbd15

--- 7. List all employees in the Sales and Development departments, including their employee number, last name, 
--- first name, and department name.
SELECT * FROM departments
<<<<<<< HEAD
WHERE dept_name ='Sales' OR dept_name='Development'

SELECT * FROM dept_manager

--- 8. In ascending order, list the frequency count of employee last names, i.e., how many employees share each last name.

=======
NATURAL JOIN employees
WHERE dept_name ='Sales' OR dept_name='Development'
--- 8. In ascending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT COUNT(last_name) 
FROM employees


SELECT
   column_1,
   column_2
FROM
   tbl_name
ORDER BY
   column_1 ASC,
   column_2 DESC;
>>>>>>> 83fff1fbea37eb8019b0db462c79cca4a18cbd15











