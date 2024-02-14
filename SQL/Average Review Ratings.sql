-- Easy - Average Review Ratings [Amazon SQL Interview Question]

SELECT EXTRACT('month' FROM submit_date) as mth,
       product_id as product,
       round(AVG(stars),2) as avg_stars
FROM reviews
GROUP BY mth, product
ORDER BY mth, product;
