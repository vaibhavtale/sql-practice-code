delete from invoices_with_balance
where invoice_id = 1;

update invoices_with_balance
set due_date = date_add(due_date, interval 2 day)
where invoice_id = 2