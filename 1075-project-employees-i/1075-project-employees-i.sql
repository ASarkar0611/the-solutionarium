# Write your MySQL query statement below
select distinct p.project_id, round(avg(e.experience_years), 2) as average_years
from project p, employee e
where p.employee_id = e.employee_id
group by p.project_id;