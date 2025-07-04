# Write your MySQL query statement below
select person_name from (select *,
@total_weight := @total_weight + weight as total_weight
from
(select *
from queue
order by turn) tab1
join
(SELECT @total_weight := 0) AS rt
order by total_weight desc) tab2
where total_weight <= 1000
limit 1