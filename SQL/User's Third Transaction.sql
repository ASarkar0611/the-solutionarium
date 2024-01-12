-- User's Third Transaction [Uber SQL Interview Question]

select user_id, spend, transaction_date 
from (SELECT *, 
      row_number() OVER(partition by user_id order by transaction_date) as rn
FROM transactions) as t
where t.rn = 3;
