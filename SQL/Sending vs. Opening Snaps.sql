-- Sending vs. Opening Snaps [Snapchat SQL Interview Question]

with total_activity_time AS
(SELECT ab.age_bucket, a.activity_type, sum(a.time_spent) AS total_time
FROM activities a
JOIN age_breakdown ab ON ab.user_id = a.user_id
GROUP BY ab.age_bucket, a,activity_type
ORDER BY ab.age_bucket, a,activity_type),

send_time AS
(SELECT age_bucket, SUM(total_time) AS total_send_time
FROM total_activity_time
WHERE activity_type = 'send'
GROUP BY age_bucket),

open_time AS
(SELECT age_bucket, SUM(total_time) AS total_open_time
FROM total_activity_time
WHERE activity_type = 'open'
GROUP BY age_bucket)

SELECT st.age_bucket, 
        ROUND(((total_send_time/(total_send_time+total_open_time))*100),2) AS send_perc,
        ROUND(((total_open_time/(total_send_time+total_open_time))*100),2) AS open_perc
FROM send_time st, open_time ot
WHERE st.age_bucket = ot.age_bucket
ORDER BY st.age_bucket;
