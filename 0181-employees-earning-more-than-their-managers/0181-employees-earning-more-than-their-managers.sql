# Write your MySQL query statement below
with managers as
(select * from employee),

subordinates as
(select * from employee where managerId is not null)

select s.name as Employee
from subordinates s
inner join managers m on m.id = s.managerId and m.salary < s.salary;