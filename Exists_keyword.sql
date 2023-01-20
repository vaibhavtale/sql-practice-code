use sql_invoicing;

select *
from clients
where client_id in (
	select distinct client_id
    from invoices
    );
    
select *
from clients c
where exists (
	select client_id
    from invoices
    where c.client_id = client_id
    )
	