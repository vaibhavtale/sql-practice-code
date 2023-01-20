use sql_invoicing;

select 
	client_id,
    sum(invoice_total) as total_sales
from invoices
group by client_id
having total_sales > 500;

select 
	client_id,
    sum(invoice_total) as total_sales,
    count(*) as number_of_invoices
from invoices
group by client_id
having total_sales > 500 and number_of_invoices > 5