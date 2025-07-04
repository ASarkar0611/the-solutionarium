# Write your MySQL query statement below
select q.query_name, 
round(sum(q.rating/q.position)/count(q.result),2) as quality,
round(((select 
case count(q1.rating)
    when NULL then 0
    else count(q1.rating)
end
from queries q1
where q1.query_name = q.query_name and q1.rating < 3)/count(q.result))*100,2) as poor_query_percentage
from queries q
group by q.query_name;