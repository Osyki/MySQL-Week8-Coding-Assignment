SELECT t.title AS "Title", count(t.title) as "Total Count"
FROM employees.titles t
INNER JOIN employees.employees e ON e.emp_no = t.emp_no
WHERE e.birth_date > '1965-01-01'
GROUP BY title;

SELECT t.title as "Title", AVG(s.salary) as "Average Salary"
FROM employees.titles t
INNER JOIN employees.salaries s ON s.emp_no = t.emp_no
GROUP BY title;


SELECT SUM(s.salary) as "Total Salary", d.dept_name as "Department"
FROM employees.salaries s
INNER JOIN employees.dept_emp de ON de.emp_no = s.emp_no
INNER JOIN employees.departments d ON de.dept_no = d.dept_no
WHERE d.dept_name = "Marketing" AND de.from_date >= '1990-01-01' AND de.to_date < '1992-01-01';
