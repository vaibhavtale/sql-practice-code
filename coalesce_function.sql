use sql_store;

select 
	order_id,
    coalesce(shipper_id,comments,'Not Assigned') as shipper
from orders