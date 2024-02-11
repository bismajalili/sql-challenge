select*from departments 
select*from dept_emp
select*from dept_manager
select*from employees
select*from salaries
select*from titles



select e.emp_no, e.last_name, e.first_name, e.sex, s.salary
from employees as e
join salaries as s
on e.emp_no = s.emp_no
order by e.emp_no

select first_name, last_name, hire_date
from employees
where hire_date between '1986-01-01'and '1986-12-31'
order by hire_date


select d.dept_no,d.dept_name,dm.emp_no,e.last_name, e.first_name
from dept_manager
as dm
join departments as d
on dm.dept_no= d.dept_no
join employees as e
on dm.emp_no = e.emp_no


select d.dept_no,de.emp_no,e.last_name, e.first_name,d.dept_name
from dept_emp
as de
join departments as d
on de.dept_no= d.dept_no
join employees as e
on de.emp_no = e.emp_no


select first_name, last_name, sex
from employees
where first_name = 'Hercules'
and last_name like 'B%'


select e.emp_no, e.last_name, e.first_name
from employees as e
join dept_emp as de
on e.emp_no =de.emp_no
join departments as d
on de.dept_no=d.dept_no
where d.dept_name ='Sales'

select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees as e
join dept_emp as de
on e.emp_no =de.emp_no
join departments as d
on de.dept_no=d.dept_no
--where d.dept_name ='Sales' OR d.dept_name='Development';
where d.dept_name in ('Sales','Development')

select e.last_name, count(e.last_name) as frequency 
from employees as e
group by last_name
order by frequency DESC