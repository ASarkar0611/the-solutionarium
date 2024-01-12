-- Cities With Completed Trades [Robinhood SQL Interview Question]

SELECT u.city, count(t.order_id) as total_orders
FROM trades t, users u
WHERE t.user_id = u.user_id
AND status = 'Completed'
GROUP BY u.city
ORDER BY total_orders DESC
LIMIT 3;
