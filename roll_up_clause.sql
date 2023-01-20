use sql_invoicing;

select 
	state,
    city,
    sum(invoice_total) as total_payment
from invoices i
join clients c using (client_id)
group by state, city with rollup
