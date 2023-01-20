use sql_invoicing;

update invoices
set payment_total = 10, payment_date = due_date
where client_id in (3,5)

 -- if you want to update all the values in the table simply exclude the where clause and values will be updated 