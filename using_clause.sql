use sql_store;

select
	o.order_id,
    c.first_name,
    sh.name as shipper
from orders o
join customers c
	-- on c.customer_id = o.customer_id
    using (customer_id)
left join shippers sh
	using (shipper_id)