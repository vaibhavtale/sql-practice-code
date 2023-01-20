use sql_store;

select
	product_id,
    name,
    count(*) as orders,
    if(
    count(*) > 1,
    'many', 'once'
    ) as xyz
from products 
join order_items  using(product_id)
group by product_id, name

    