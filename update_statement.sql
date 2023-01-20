use sql_invoicing;

 Updating a value in row of invoices table
update invoices
set payment_total = 10, payment_date = '2019-03-01'
where invoice_id = 3

Restoring a value of row updated 
update invoices
set payment_total = default, payment_date = null
where invoice_id = 3

update invoices
set 
	payment_total = invoice_total * 0.5,
    payment_date = due_date
where invoice_id = 5