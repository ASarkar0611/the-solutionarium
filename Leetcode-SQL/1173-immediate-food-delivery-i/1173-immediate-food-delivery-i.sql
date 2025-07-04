# Write your MySQL query statement below
with immediate as
(select count(*) as immediate_order_count
from delivery
where order_date = customer_pref_delivery_date)

select round((i.immediate_order_count/(select count(*) from delivery))*100,2) as immediate_percentage 
from immediate i