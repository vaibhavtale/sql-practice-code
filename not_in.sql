use sql_store;

select product_id
from products
where product_id not in
	(select distinct product_id
	from order_items)
