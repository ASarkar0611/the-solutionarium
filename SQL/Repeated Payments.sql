-- Repeated Payments [Stripe SQL Interview Question]

with curr_prev_timestamp AS (SELECT *,
       LAG(transaction_timestamp, 1) OVER(PARTITION BY merchant_id, credit_card_id, amount 
                                       ORDER BY transaction_timestamp) as prev_timestamp
FROM transactions)

SELECT COUNT(transaction_id) AS payment_count
FROM curr_prev_timestamp
WHERE EXTRACT(EPOCH FROM transaction_timestamp - prev_timestamp)/60 <= 10
