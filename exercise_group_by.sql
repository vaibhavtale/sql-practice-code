use sql_invoicing;

select 
	p.date as date,
    pm.name as payment_method,
    sum(amount) as total_payment
from payments p
join payment_methods pm
	on p.payment_method = pm.payment_method_id
group by date,payment_method
order by date