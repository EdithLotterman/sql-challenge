--List the employee number, last name, first name, sex, and salary of each employee
select e.emp_no,
	e.last_name,
	e.first_name,
	e.sex,
	s.salary
from employees as e
inner join salaries as s on s.emp_no = e.emp_no;

--List the first name, last name, and hire date for the employees who were hired 
--in 1986
select first_name, last_name, hire_date
from employees
where hire_date > '12/31/1985' 
and hire_date < '1/1/1987'; 

--List the manager of each department along with their department number,
--department name, employee number, last name, and first name
select dm.emp_no,
	e.first_name,
	e.last_name,
	dm.dept_no,
	d.dept_name
from dept_manager as dm
inner join employees as e 
on e.emp_no = dm.emp_no
inner join departments as d
on d.dept_no = dm.dept_no;

--List the department number for each employee along with that employee’s 
--employee number, last name, first name, and department name 
select e.emp_no,
	e.first_name,
	e.last_name,
	de.dept_no,
	d.dept_name
from employees as e
inner join dept_emp as de
on de.emp_no = e.emp_no
inner join departments as d
on d.dept_no = de.dept_no;

--List first name, last name, and sex of each employee whose first name is 
--Hercules and whose last name begins with the letter B
select first_name, last_name, sex
from employees
where first_name = 'Hercules'
and last_name like 'B%';

--List each employee in the Sales department, including their employee number, 
--last name, and first name
select emp_no, first_name, last_name
from employees
Where emp_no in
(
	select emp_no
	from dept_emp
	where dept_no in
	(
		select dept_no 
		from departments
		where dept_name = 'Sales'
	)
);

--List each employee in the Sales and Development departments, including their 
--employee number, last name, first name, and department name
select e.emp_no,
	e.first_name,
	e.last_name,
	d.dept_name
from employees as e
inner join dept_emp as de on
de.emp_no = e. emp_no
inner join departments as d on
d.dept_no = de.dept_no
where dept_name = 'Sales' or
dept_name = 'Development';

--List the frequency counts, in descending order, of all the 
--employee last names (that is, how many employees share each last name)
select last_name, count(1) as "No of Employees"
from employees
group by last_name
order by "No of Employees" desc;