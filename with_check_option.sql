delete from invoices_with_balance
where invoice_id = 1;

update invoices_with_balance
set payment_total = invoice_total
where invoice_id = 3