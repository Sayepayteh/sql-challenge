
--employee number, last name, first name, sex, and salary of each employee

SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary 
FROM employees
INNER JOIN salaries ON employees.emp_no=salaries.emp_no;


--first name, last name, and hire date for the employees who were hired in 1986.
SELECT first_name, last_name, hire_date 
FROM employees 
WHERE EXTRACT(YEAR FROM hire_date) = 1986;


--managers of each department along with their department number, department name, employee number, last name, and first name

SELECT 
    departments.dept_no,
    departments.dept_name,
    employees.emp_no,
    employees.last_name,
    employees.first_name
FROM 
    dept_manager 
JOIN 
    employees ON dept_manager.emp_no = employees.emp_no
JOIN 
    departments ON dept_manager.dept_no = departments.dept_no;


--department number for each employee along with that employee’s employee number, last name, first name, and department name.

SELECT 
    dept_emp.dept_no,
    employees.emp_no,
    employees.last_name,
    employees.first_name,
    departments.dept_name
FROM 
    dept_emp
JOIN 
    employees ON dept_emp.emp_no = employees.emp_no
JOIN 
    departments ON dept_emp.dept_no = departments.dept_no;


--first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

SELECT 
    first_name, 
    last_name, 
    sex
FROM 
    employees
WHERE 
    first_name = 'Hercules'
    AND last_name LIKE 'B%';


--List of employees in the Sales department, including their employee number, last name, and first name.

SELECT 
    employees.emp_no, 
    employees.last_name, 
    employees.first_name
FROM 
    dept_emp 
JOIN 
    employees ON dept_emp.emp_no = employees.emp_no
JOIN 
    departments ON dept_emp.dept_no = departments.dept_no
WHERE 
    departments.dept_name = 'Sales';


--employees in the Sales and Development departments, including their employee number, last name, first name, and department name

SELECT 
    employees.emp_no, 
    employees.last_name, 
    employees.first_name, 
    departments.dept_name
FROM 
    dept_emp 
JOIN 
    employees ON dept_emp.emp_no = employees.emp_no
JOIN 
    departments ON dept_emp.dept_no = departments.dept_no
WHERE 
    departments.dept_name IN ('Sales', 'Development');


--the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name)

SELECT 
    last_name, 
    COUNT(*) AS name_count
FROM 
    employees
GROUP BY 
    last_name
ORDER BY 
    name_count DESC;







	