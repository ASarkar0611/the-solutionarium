# Write your MySQL query statement below
with t1 as (select tbl.request_at as 'Day',
count(tbl.id) as 'Total'
from
(select t.id, t.client_id, t.driver_id, t.status, t.request_at
from trips t
where t.client_id in (select users_id from users where banned = 'No')
and t.driver_id in (select users_id from users where banned = 'No')
and t.request_at >= '2013-10-01' and t.request_at <= '2013-10-03') as tbl
group by Day),
t2 as 
(select tbl.request_at as 'Day',
count(tbl.id) as 'Cncl'
from
(select t.id, t.client_id, t.driver_id, t.status, t.request_at
from trips t
where t.client_id in (select users_id from users where banned = 'No')
and t.driver_id in (select users_id from users where banned = 'No')
and t.status like 'cancelled%'
and t.request_at >= '2013-10-01' and t.request_at <= '2013-10-03') as tbl
group by Day)

select t1.Day, coalesce(round((t2.Cncl/t1.Total),2),0) as 'Cancellation Rate'
from t1
left join t2 on t1.Day = t2.Day
;