select max(invoice_total)
from invoices;

select min(invoice_total)
from invoices;

-- if we use payment date instead of numeric values it returns latest date

select max(payment_date)
from invoices;

select
	max(invoice_total) as highest,
    min(invoice_total) as lowest,
    avg(invoice_total) as average,
	sum(invoice_total*1.1) as Total,
    count(invoice_total) as number_of_invoices,
    count(payment_date) as not_null,
   --  count(*) as records
   count(distinct client_id) as records
from invoices
where invoice_date > '2019-07-01'
