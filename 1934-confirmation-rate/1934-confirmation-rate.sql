# Write your MySQL query statement below

with tout as
(select user_id, count(action) as tout_count from confirmations
where action = 'timeout' group by user_id),
conf as
(select user_id, count(action) as conf_count from confirmations
where action = 'confirmed' group by user_id)

select s.user_id,
case
    when t.tout_count is null and c.conf_count is not null then 1.00
    when c.conf_count is null then 0.00
    else round(c.conf_count/(c.conf_count+t.tout_count),2)
end as confirmation_rate
from signups s
left join tout t on t.user_id = s.user_id
left join conf c on c.user_id = s.user_id;