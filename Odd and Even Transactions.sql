Leetcode Question:
+----------------+

Write a solution to find the sum of amounts for odd and even transactions for each day. If there are no odd or even transactions for a specific date, display as 0. Return the result table ordered by transaction_date in ascending order. The result format is in the following example.
Input:
transactions table:

+----------------+--------+------------------+
| transaction_id | amount | transaction_date |
+----------------+--------+------------------+
| 1              | 150    | 2024-07-01       |
| 2              | 200    | 2024-07-01       |
| 3              | 75     | 2024-07-01       |
| 4              | 300    | 2024-07-02       |
| 5              | 50     | 2024-07-02       |
| 6              | 120    | 2024-07-03       |
+----------------+--------+------------------+

Solution (MySQL):
+---------------+

select transaction_date,
sum(if(amount % 2 != 0, amount, 0)) as odd_sum,
sum(if(amount % 2 = 0, amount, 0)) as even_sum
from transactions 
group by transaction_date
order by transaction_date;
