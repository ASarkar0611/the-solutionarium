# Write your MySQL query statement below
select sp.name
from salesperson sp
where sp.sales_id not in 
(select o.sales_id from orders o, company c
where o.com_id = c.com_id
and c.name in ('RED'))
or not exists (select 1 from orders o where o.sales_id = sp.sales_id);