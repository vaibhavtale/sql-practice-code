use sql_inventory;

select * 
-- if you are selecting tables from two different databases have to use name of data base and the a '.' operrator.
from sql_store.order_items oi
join sql_inventory.products p
	on oi.product_id = p.product_id