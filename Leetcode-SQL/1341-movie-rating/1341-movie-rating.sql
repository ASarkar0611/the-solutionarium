# Write your MySQL query statement below
select name as results
from
(select u.name, count(mr.movie_id) as rating_count
from movierating mr, users u
where mr.user_id = u.user_id
group by u.name
order by rating_count desc, u.name
limit 1
) table1

union all

select title as results
from
(select m.title, avg(mr.rating) as average_rating
from movierating mr, movies m
where mr.movie_id = m.movie_id 
and year(mr.created_at) = '2020'
and month(mr.created_at) = '02'
group by m.title
order by average_rating desc, m.title
limit 1) table2