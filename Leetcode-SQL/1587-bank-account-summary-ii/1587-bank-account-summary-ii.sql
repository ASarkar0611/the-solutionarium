# Write your MySQL query statement below
select u.name, tab1.balance
from
(select account, sum(amount) as balance
from transactions
group by account) tab1, users u
where tab1.account = u.account
and tab1.balance > 10000