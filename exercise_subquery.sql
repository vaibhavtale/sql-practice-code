use sql_store;

update orders 
set comments = 'Gold Customers'
where customer_id in
				(select customer_id
                from customers c
                where c.points > 3000)