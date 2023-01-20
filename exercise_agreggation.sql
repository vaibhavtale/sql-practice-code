use sql_invoicing;
 
 select
	'first half of 2019' as date_range,
	sum(invoice_total) as Total_sales,
    sum(payment_total) as Total_payments,
    sum(invoice_total - payment_total) as What_we_expect
from invoices
where invoice_date 
	between '2019-01-01' and '2019-06-30'