# # Write your MySQL query statement below
with tab1 as (select c1.visited_on as currDate, date_sub(c1.visited_on, interval 6 day) as oldDate,
(select sum(c2.amount) from customer c2 where c2.visited_on 
                  between date_sub(c1.visited_on, interval 6 day)
and c1.visited_on) as amount
from customer c1
group by c1.visited_on
order by c1.visited_on)

select t.currDate as visited_on, t.amount, round((t.amount/7),2) as average_amount
from customer c, tab1 t
where c.visited_on = t.oldDate
group by visited_on