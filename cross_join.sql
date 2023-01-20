use sql_store;

select
	c.first_name as customer,
    p.name as product
from customers c
cross join products p