-- Supercloud Customer [Microsoft SQL Interview Question]

WITH prodcat_count AS
(SELECT COUNT(DISTINCT product_category) AS pcc FROM products)

SELECT customer_id
FROM
(SELECT cc.customer_id, COUNT(DISTINCT p.product_category) as cat_count
FROM customer_contracts cc, products p
WHERE cc.product_id = p.product_id
GROUP BY 1) t1, prodcat_count pc
WHERE t1.cat_count = pc.pcc
