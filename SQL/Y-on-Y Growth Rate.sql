-- Y-on-Y Growth Rate [Wayfair SQL Interview Question]

SELECT *,
       ROUND((((curr_year_spend - prev_year_spend)/prev_year_spend) * 100), 2) AS yoy_rate
FROM (SELECT year, 
       product_id,
       year_spend AS curr_year_spend,
       LAG(year_spend, 1) OVER(PARTITION BY product_id ORDER BY year) AS prev_year_spend
FROM (SELECT product_id,
             EXTRACT('year' FROM transaction_date) as year,
             SUM(spend) AS year_spend
      FROM user_transactions
      GROUP BY 1, 2
      ORDER BY 1, 2) t) t1
