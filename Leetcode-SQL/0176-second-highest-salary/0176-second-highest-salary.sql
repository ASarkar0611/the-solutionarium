# Write your MySQL query statement below
with salary_rank as
(select *,
        dense_rank() over (order by salary desc) as rn
from employee)

# select * from salary_rank

select coalesce((select distinct salary 
from salary_rank where rn = 2), NULL) as SecondHighestSalary;