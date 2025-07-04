# Write your MySQL query statement below
with connum as (select distinct case
        when num = prev_num and next_num = num then num
       end as ConsecutiveNums
from
(select *,
       lag(num, 1) over (order by id) as prev_num,
       lead(num, 1) over (order by id) as next_num
from logs) t)

#select * from connum
select ConsecutiveNums from connum where ConsecutiveNums is not null