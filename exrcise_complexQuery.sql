use sql_store;

select 
	distinct customer_id
from customers c
join orders o
	using (customer_id)
where order_id in
		(select order_id
		from order_items
		where product_id = 3)
