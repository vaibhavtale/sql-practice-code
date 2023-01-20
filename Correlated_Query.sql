use sql_hr;


select *
from employees e
where e.salary > (
		select avg(salary)
		from employees
		where office_id = e.office_idS
)