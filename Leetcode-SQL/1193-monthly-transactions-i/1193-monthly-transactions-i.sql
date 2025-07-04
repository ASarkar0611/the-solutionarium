# Write your MySQL query statement below

with tbl1 as
(select distinct year(t.trans_date) as trans_year, 
 lpad(month(t.trans_date), 2, 0) as trans_month, 
 t.country
from transactions t),

tbl2 as 
(select concat(tb.trans_year, '-', trans_month) as month,
 tb.country, count(t.id) as trans_count, sum(t.amount) as trans_total_amount
from transactions t, tbl1 tb
where year(t.trans_date) = tb.trans_year 
 and lpad(month(t.trans_date), 2, 0) = tb.trans_month
and t.country = tb.country
group by month, country),

tbl3 as
(select tb.month, tb.country, tb.trans_count,
 ifnull(count(t.id),0) as approved_count,
 tb.trans_total_amount,
 ifnull(sum(t.amount),0) as approved_total_amount
from tbl2 tb
left join transactions t
on concat(year(t.trans_date), '-', lpad(month(t.trans_date),2,0)) = tb.month
and t.country = tb.country and t.state = 'approved'
group by tb.month, tb.country)

select * from tbl3