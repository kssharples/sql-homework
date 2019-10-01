-- List the following details of each employee: employee number, last name, first name, gender, and salary.
In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT e.emp_no, e.last_name, e.first_name, e.gender, s.salary
FROM employees AS e
INNER JOIN salaries AS s ON
e.emp_no = s.emp_no;
--List employees who were hired in 1986.
SELECT * FROM employees
WHERE hire_date = '1986';
--List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.
SELECT DM.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name, DM.from_date, DM.to_date
FROM employees AS e
INNER JOIN dept_manager as DM
      ON DM.emp_no=e.emp_no
INNER JOIN titles as t
	ON DM.emp_no=t.emp_no
INNER JOIN departments as d
      ON d.dept_no=DM.dept_no
WHERE t.title = '%Manager'
--List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT e.emp_no, e.first_name, e.last_name, d.dept_name
FROM employees AS e
INNER JOIN dept_manager as DM
      ON DM.emp_no=e.emp_no
INNER JOIN departments as d
      ON d.dept_no=DM.dept_no
--List all employees whose first name is "Hercules" and last names begin with "B."
SELECT * FROM employees
WHERE first_name = 'Hercules' AND last_name = 'B%';
--List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT e.emp_no, e.first_name, e.last_name, d.dept_name
FROM employees AS e
INNER JOIN dept_manager as DM
      ON DM.emp_no=e.emp_no
INNER JOIN departments as d
      ON d.dept_no=DM.dept_no
WHERE d.dept_name = 'Sales'
--List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT e.emp_no, e.first_name, e.last_name, d.dept_name
FROM employees AS e
INNER JOIN dept_manager as DM
      ON DM.emp_no=e.emp_no
INNER JOIN departments as d
      ON d.dept_no=DM.dept_no
WHERE d.dept_name = 'Sales' OR 'Development'
