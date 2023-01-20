use sql_store;

select *
from orders
where year(order_date) = year(now())
-- here the current year is 2022 and the course were designed in 2019 so its not working....