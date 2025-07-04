# Write your MySQL query statement below
with feb_order as (select * from orders where year(order_date) = '2020'
and month(order_date) = '02')

select p.product_name, sum(fo.unit) as unit
from products p, feb_order fo
where p.product_id = fo.product_id
group by p.product_name
having unit >= 100
