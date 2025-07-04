# Write your MySQL query statement below
with first_year_prod as
(select product_id, min(year) as first_year
from sales
group by product_id)

select fyp.product_id, fyp.first_year, s.quantity,
       s.price
from first_year_prod fyp, sales s
where fyp.product_id = s.product_id
and fyp.first_year = s.year
