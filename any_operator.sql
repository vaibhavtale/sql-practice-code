use sql_invoicing;

select *
from clients
where client_id  = any
		(select client_id
		from invoices
		group by client_id
        having count(*) >= 2)
        
-- Using ANY operator or IN does not make any kind of difference.... 