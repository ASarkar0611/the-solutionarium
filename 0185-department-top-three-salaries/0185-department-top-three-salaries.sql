# Write your MySQL query statement below
select d.name as 'Department', tb.name as 'Employee', tb.salary as 'Salary'
from
(select departmentId, name, salary,
dense_rank() over (partition by departmentId order by salary desc) drnk
from employee) tb
inner join department d on d.id = tb.departmentId
where tb.drnk <= 3;