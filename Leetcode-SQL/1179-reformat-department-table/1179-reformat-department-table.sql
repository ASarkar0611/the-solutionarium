/* Write your PL/SQL query statement below */
with t1 as 
(select id, revenue from department where month = 'Jan'),
t2 as (select id, revenue from department where month = 'Feb'),
t3 as (select id, revenue from department where month = 'Mar'),
t4 as (select id, revenue from department where month = 'Apr'),
t5 as (select id, revenue from department where month = 'May'),
t6 as (select id, revenue from department where month = 'Jun'),
t7 as (select id, revenue from department where month = 'Jul'),
t8 as (select id, revenue from department where month = 'Aug'),
t9 as (select id, revenue from department where month = 'Sep'),
t10 as (select id, revenue from department where month = 'Oct'),
t11 as (select id, revenue from department where month = 'Nov'),
t12 as (select id, revenue from department where month = 'Dec')
select distinct d.id, 
t1.revenue "Jan_Revenue", t2.revenue "Feb_Revenue", 
t3.revenue "Mar_Revenue", t4.revenue "Apr_Revenue",
t5.revenue "May_Revenue", t6.revenue "Jun_Revenue",
t7.revenue "Jul_Revenue", t8.revenue "Aug_Revenue",
t9.revenue "Sep_Revenue", t10.revenue "Oct_Revenue",
t11.revenue "Nov_Revenue", t12.revenue "Dec_Revenue"
from department d
left join t1 on t1.id = d.id
left join t2 on t2.id = d.id
left join t3 on t3.id = d.id
left join t4 on t4.id = d.id
left join t5 on t5.id = d.id
left join t6 on t6.id = d.id
left join t7 on t7.id = d.id
left join t8 on t8.id = d.id
left join t9 on t9.id = d.id
left join t10 on t10.id = d.id
left join t11 on t11.id = d.id
left join t12 on t12.id = d.id
order by d.id;