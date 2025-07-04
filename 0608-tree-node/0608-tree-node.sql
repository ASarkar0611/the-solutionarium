# Write your MySQL query statement below
with find_root as
(select id, "Root" as type from tree where p_id is NULL),

find_inner as
(select id, "Inner" as type
from tree
where p_id is not NULL
and id in (select distinct p_id from tree)),

find_leaf as
(select id, "Leaf" as type
from tree
where p_id is not NULL
and id not in (select id from find_inner))

select * from find_root
union all
select * from find_inner
union all
select * from find_leaf
