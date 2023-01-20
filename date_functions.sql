select now() as today, curdate(), curtime();
select year(now()), month(now()), day(now()), hour(now()), minute(now()), second(now());
select dayname(now()), monthname(now());
select extract(year from now())
