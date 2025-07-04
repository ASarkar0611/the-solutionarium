# Write your MySQL query statement below
with tab as (select *,
rank() over (partition by customer_id order by order_date) as rn
from delivery),

tab1 as
(select ifnull(count(*),0) as eq_cnt from tab where tab.rn = 1
and tab.order_date = tab.customer_pref_delivery_date),

tab2 as (select count(*) as tot_cnt from tab where tab.rn = 1)

select round((tab1.eq_cnt/tab2.tot_cnt)*100, 2) as immediate_percentage from tab1, tab2
