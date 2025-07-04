# Write your MySQL query statement below
select tb.player_id, tb.event_date as first_login
from (select player_id, event_date,
row_number() over (partition by player_id order by event_date) as rn
from activity) as tb
where tb.rn = 1;