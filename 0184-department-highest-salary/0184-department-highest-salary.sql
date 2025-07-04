# Write your MySQL query statement below
with department_rank as
(select *,
        dense_rank() over (partition by departmentId order by salary desc) as rn
from employee)

select d.name as Department, dr.name as Employee, dr.salary as Salary
from department_rank dr, department d
where dr.departmentId = d.id
and dr.rn = 1