use sql_invoicing;

delete from invoices
where invoice_id = 
	(select client_id
     from clients
     where name = 'Topiclounge')