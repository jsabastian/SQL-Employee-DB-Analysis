-- queries
-- join salary table to employee table on emp_no key
select e.emp_no, e.last_name, e.first_name, e.sex, s.salary
from employees as e
left join salaries as s
on e.emp_no = s.emp_no;

-- query columns from employees table
select * from employees;

select first_name, last_name, hire_date
from employees
where hire_date between '1986/1/1' and '1986/12/31';

-- join manager to departments on dept_no, then employees to managers 
-- on emp_no to get the last and first names
select d.dept_no, d.dept_name, m.emp_no, e.last_name, e.first_name
from departments as d
left join manager as m
on d.dept_no = m.dept_no
left join employees as e
on m.emp_no = e.emp_no;

-- join dept_employees to departments on dept_no to get dept_names, then join -- employees to dept_employees on emp_no to get names
select e.emp_no, e.last_name, e.first_name, d.dept_name
from dept_employees as de
left join departments as d
on de.dept_no = d.dept_no
left join employees as e
on de.emp_no = e.emp_no;

-- easy peasy
select e.first_name, e.last_name, e.sex
from employees as e
where e.first_name = 'Hercules' 
and e.last_name like 'B%';

-- 
select e.emp_no, e.last_name, e.first_name, d.dept_name 
from employees as e
left join dept_employees as de on 
e.emp_no = de.emp_no
left join departments as d on 
de.dept_no = d.dept_no
where d.dept_name = 'Sales';

--
select e.emp_no, e.last_name, e.first_name, d.dept_name 
from employees as e
left join dept_employees as de on 
e.emp_no = de.emp_no
left join departments as d on 
de.dept_no = d.dept_no
where d.dept_name = 'Sales' or d.dept_name = 'Development';

-- create a column to hold the count of last name groups
select last_name, count(*)
as "frequency_of_last_names"
from employees
group by last_name
order by "frequency_of_last_names" desc;