# Write your MySQL query statement below
select distinct e1.name
from employee e1, (select count(id) as directReport, managerID
from employee where managerId is not null group by managerId having directReport >=  5) tb
where e1.id = tb.managerID;

# select count(id) as directReport, managerID
# from employee where managerId is not null group by managerID
# having directReport =  5

#select id from employee where name = 'Ex1T'