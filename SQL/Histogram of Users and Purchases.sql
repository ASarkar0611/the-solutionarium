-- Histogram of Users and Purchases [Walmart SQL Interview Question]

with grouped_data AS
(SELECT user_id, transaction_date, 
       COUNT(product_id) as purchase_count
FROM user_transactions
GROUP BY user_id, transaction_date
ORDER BY user_id, transaction_date),

ranked_data AS
(SELECT *, RANK() OVER(PARTITION BY user_id ORDER BY transaction_date DESC) as rn
FROM grouped_data)

SELECT transaction_date, user_id, purchase_count
FROM ranked_data
WHERE rn=1
ORDER BY transaction_date;
