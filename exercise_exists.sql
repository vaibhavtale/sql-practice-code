use sql_store;

select *
from products
where product_id not in (
	select product_id
    from order_items
    );
    
select *
from products p
where not exists (
	select product_id
    from order_items
    where p.product_id = product_id
    )