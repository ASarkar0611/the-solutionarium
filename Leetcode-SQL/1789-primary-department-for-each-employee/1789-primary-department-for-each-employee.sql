# Write your MySQL query statement below
with table1 as
(select employee_id, department_id, primary_flag, count(department_id) as department_count
from employee
group by employee_id)


select * from 
(select t.employee_id,
case department_count
    when 1 then (select e.department_id from employee e where e.employee_id = t.employee_id)
    else (select e.department_id from employee e where e.employee_id = t.employee_id
         and e.primary_flag = 'Y')
end as department_id
from table1 t) tab
where tab.department_id is not null
