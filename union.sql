SELECT 
	order_id,
    order_date,
    'Active' as status
FROM sql_store.orders
where order_date >= '2019-01-01'
union
select
	order_id,
    order_date,
    'Archieved' as status
from sql_store.orders
where order_date < '2019-01-01'