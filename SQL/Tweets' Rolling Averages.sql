-- Tweets' Rolling Averages [Twitter SQL Interview Question]

SELECT user_id,
       tweet_date,
       CASE tweet_rank
        WHEN 1 THEN ROUND(tweet_count, 2)
        WHEN 2 THEN ROUND((AVG(tweet_count) OVER(PARTITION BY user_id ORDER BY tweet_date ROWS BETWEEN
        1 PRECEDING AND CURRENT ROW)), 2)
        ELSE ROUND((AVG(tweet_count) OVER(PARTITION BY user_id ORDER BY tweet_date ROWS BETWEEN
        2 PRECEDING AND CURRENT ROW)), 2)
       END as rolling_avg_3d
FROM (SELECT *,
       RANK() OVER(PARTITION BY user_id ORDER BY tweet_date) as tweet_rank
FROM tweets) t
ORDER BY 1, 2
