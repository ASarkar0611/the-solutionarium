-- Easy
-- Write an SQL query to report the first name, last name, city, and state of each person in the Person table. 
-- If the address of a personId is not present in the Address table, report null instead. 

select p.firstName, p.lastName, a.city, a.state
from person p
left outer join address a on a.personId = p.personID;

---------------------------------------------------------------------------------------------------------------
-- Easy
-- Write an SQL query to find the employees who earn more than their managers.

select e1.name as Employee
from employee e1
where e1.salary > 
(select e2.salary from employee e2 where e2.id = e1.managerId);

----------------------------------------------------------------------------------------------------------------
-- Easy
-- Write an SQL query to find all dates' Id with higher temperatures compared to its previous dates (yesterday).

select w.id
from weather w
where w.temperature >
(select w1.temperature from weather w1
 where w1.recordDate = date_add(w.recordDate, interval -1 day));

----------------------------------------------------------------------------------------------------------------
-- Easy
-- Write an SQL query to report all the classes that have at least five students.

select class from (select class, count(student) as stuCnt
from courses
group by class) tb
where tb.stuCnt >= 5;