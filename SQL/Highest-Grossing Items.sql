-- Highest-Grossing Items [Amazon SQL Interview Question]

select category,
       product,
       total_spend
FROM (SELECT category,
       product,
       round(sum(spend),2) as total_spend,
       rank() OVER(PARTITION BY category ORDER BY SUM(spend) desc) as spend_rank
FROM product_spend
WHERE EXTRACT(year from transaction_date) = 2022
GROUP BY category, product) T
WHERE t.spend_rank <= 2;
