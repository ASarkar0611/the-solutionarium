# Write your MySQL query statement below
select product_id, year as first_year, quantity, price
from
(select *,
       dense_rank() over (partition by product_id order by year) as year_rank
from sales) t
where t.year_rank = 1
