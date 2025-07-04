select e1.employee_id,
e1.name,
(select count(e2.employee_id) 
 from employees e2 
 where e2.reports_to = e1.employee_id) as reports_count,
(select round(avg(e3.age) )
 from employees e3 
 where e3.reports_to = e1.employee_id) as average_age
from employees e1
group by e1.employee_id, e1.name
having reports_count >= 1
order by e1.employee_id
