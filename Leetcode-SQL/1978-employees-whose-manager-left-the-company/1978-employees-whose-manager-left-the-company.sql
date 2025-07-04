# Write your MySQL query statement below
with employeesNew as
(select * from employees
where salary < 30000
and manager_id is not null)

select en.employee_id from employeesNew en
where not exists (select e.employee_id from employees e
             where e.employee_id = en.manager_id)
order by en.employee_id