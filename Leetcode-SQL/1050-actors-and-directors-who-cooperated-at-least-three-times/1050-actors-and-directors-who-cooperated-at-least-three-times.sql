# Write your MySQL query statement below
select distinct tb.actor_id, tb.director_id from
(select actor_id, director_id, count(timestamp) as cnt
from ActorDirector
group by actor_id, director_id) tb
where tb.cnt >= 3;