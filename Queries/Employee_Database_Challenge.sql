--
--Deliverable 1: The Number of Retiring Employees by Title
--
SELECT e.emp_no,
e.first_name,
e.last_name,
t.title,
t.from_date,
t.to_date
INTO retirement_titles
FROM employees as e
INNER JOIN titles AS t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no ASC;

--Print retirement_titles table to inspect it prior to exporting it to a CSV
SELECT * FROM retirement_titles;

--Exclude employees that have already left the company
SELECT DISTINCT ON (rt.emp_no) rt.emp_no,
rt.first_name,
rt.last_name,
rt.title
INTO unique_titles
FROM retirement_titles AS rt
ORDER BY emp_no ASC, to_date DESC;

--Count how many of each title is retiring. Place count in table entitled retiring_titles
SELECT COUNT(ut.emp_no),ut.title
INTO retiring_titles
FROM unique_titles AS ut
GROUP BY title
ORDER BY COUNT(title) DESC;

--Print and inspect retiring_titles table prior to export
SELECT * FROM retiring_titles;


--
--Deliverable 2: The Employees Eligible Mentorship Program
--

SELECT DISTINCT ON (e.emp_no) e.emp_no, e.first_name, e.last_name, e.birth_date, de.from_data, de.to_date, t.title
INTO mentorship_eligibility
FROM employees AS e
INNER JOIN dept_emp AS de
ON (e.emp_no = de.emp_no)
INNER JOIN titles AS t
ON (e.emp_no = t.emp_no)
WHERE e.birth_date BETWEEN '1965-01-01' AND '1965-12-31'
AND de.to_date = '9999-01-01'
AND t.to_date = '9999-01-01'
ORDER BY e.emp_no;

--Inspect mentorship_eligibility table prior to export
SELECT * FROM mentorship_eligibility;

