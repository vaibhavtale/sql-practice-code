use sql_invoicing;

select
	pm.name as payment_method,
    sum(amount) as total
from payments p
join payment_methods pm
	on p.payment_method = pm.payment_method_id
group by payment_method with rollup