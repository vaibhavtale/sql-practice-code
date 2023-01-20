use sql_hr;
-- here we are joining the table with itself by just using different allices and accurately choosing the column names wich are to be joined
select 
	e.employee_id,
    e.first_name,
    m.first_name as manager
from employees e
join employees m
	on e.reports_to = m.employee_id