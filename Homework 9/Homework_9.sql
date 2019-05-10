--List the following details of each employee: employee number, last name, first name, gender, and salary.
SELECT e.emp_no, 
       e.last_name, 
       e.first_name, 
       e.gender, 
       s.salary 
FROM   employees e 
       INNER JOIN salaries s 
               ON s.emp_no = e.emp_no 

--List employees who were hired in 1986.
SELECT * 
FROM   employees 
WHERE  Extract(year FROM hire_date) = 1986 

--List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and --start and end employment dates.
SELECT d.dept_no, 
       d.dept_name, 
       e.emp_no, 
       e.last_name, 
       e.first_name, 
       de.from_date, 
       de.to_date 
FROM   departments d 
       INNER JOIN dept_emp de 
               ON de.dept_no = d.dept_no 
       INNER JOIN employees e 
               ON e.emp_no = de.emp_no 
       INNER JOIN titles ti 
               ON ti.emp_no = e.emp_no 
WHERE  title = 'Manager' 

--List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT e.emp_no, 
       e.last_name, 
       e.first_name, 
       d.dept_name 
FROM   departments d 
       INNER JOIN dept_emp de 
               ON de.dept_no = d.dept_no 
       INNER JOIN employees e 
               ON e.emp_no = de.emp_no 

--List all employees whose first name is "Hercules" and last names begin with "B."		   
SELECT * 
FROM   employees 
WHERE  first_name = 'Hercules' 
       AND last_name LIKE ( 'B%' ) 

--List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT e.emp_no, 
       e.last_name, 
       e.first_name, 
       d.dept_name 
FROM   departments d 
       INNER JOIN dept_emp de 
               ON de.dept_no = d.dept_no 
       INNER JOIN employees e 
               ON e.emp_no = de.emp_no 
WHERE  dept_name = 'Sales' 

--List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT e.emp_no, 
       e.last_name, 
       e.first_name, 
       d.dept_name 
FROM   departments d 
       INNER JOIN dept_emp de 
               ON de.dept_no = d.dept_no 
       INNER JOIN employees e 
               ON e.emp_no = de.emp_no 
WHERE  dept_name IN ( 'Sales', 'Development' )

--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name, 
       Count(emp_no) 
FROM   employees 
GROUP  BY last_name 
ORDER  BY 2 DESC 