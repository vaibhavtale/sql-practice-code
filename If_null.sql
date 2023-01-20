use sql_store;

select 
	order_id,
    ifnull(shipper_id,'Not Assigned') as shipper
    from orders
    order by order_id