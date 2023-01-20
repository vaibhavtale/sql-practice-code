use sql_store;

-- implicit syntax to cross join two tables  

-- select 
-- 	p.name as product,
--     sh.name as shipper
-- from products p
-- join shippers sh
-- order by product

-- explicit sytax for cross join
select 
	p.name as product,
    sh.name as shipper
from products p
cross join shippers sh
