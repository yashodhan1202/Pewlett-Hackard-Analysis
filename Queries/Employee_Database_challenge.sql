SELECT e.emp_no, e.first_name, e.last_name, t.title, t.from_date, t.to_date 
INTO retirement_titles
FROM employees as e
INNER JOIN titles as t
ON(e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no ASC;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (rt.emp_no) rt.emp_no,
rt.first_name,
rt.last_name,
rt.title
INTO titles_unique
FROM retirement_titles as rt
ORDER BY emp_no ASC, to_date DESC;

--SELECT * FROM retirement_titles
--limit 10

--SELECT * FROM titles_unique
--limit 10

SELECT COUNT(tu.emp_no), tu.title
INTO retiring_titles
FROM titles_unique as tu
GROUP BY title
ORDER BY COUNT(title) DESC;

--SELECT emp_no, first_name, last_name, birth_date
--FROM employees

--SELECT from_date, to_date
--FROM dept_emp

--SELECT title 
--FROM titles

SELECT DISTINCT ON(e.emp_no) e.emp_no, e.first_name, e.last_name, de.from_date, de.to_date, t.title
INTO mentor_eligibility
FROM employees as e
INNER JOIN dept_emp as de
ON (e.emp_no = de.emp_no)
INNER JOIN titles as t
ON(e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
AND (de.to_date = '9999-01-01')
ORDER BY emp_no;

--SELECT * FROM mentor_eligibility
