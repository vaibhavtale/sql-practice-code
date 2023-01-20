use sql_invoicing;

create view clients_balance as
select 
	c.client_id,
    c.name,
    sum(invoice_total - payment_total) as balance
from clients c
join invoices i using (client_id)
group by client_id, name