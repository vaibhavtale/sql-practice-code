use sql_store;

-- select first_name
-- from customers
-- union
-- select name
-- from shippers

select
	customer_id,
	first_name,
    points,
    'Silver' as type
from customers
where points >= 2000 and points <= 3000
union
select
	customer_id,
	first_name,
    points,
    'Gold' as type
from customers
where points > 3000
union
select
	customer_id,
	first_name,
    points,
    'Bronze' as type
from customers
where points < 2000
order by first_name

    
