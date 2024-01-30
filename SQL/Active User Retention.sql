-- Active User Retention [Facebook SQL Interview Question]

SELECT EXTRACT(month from ua1.event_date) as mth,
       count(DISTINCT ua1.user_id) as monthly_active_users
  FROM user_actions ua1
 WHERE EXTRACT(MONTH FROM ua1.event_date) = 7
   AND EXISTS (SELECT 1 from user_actions ua2
                WHERE ua2.user_id = ua1.user_id
                  AND EXTRACT(month from ua2.event_date) = 6)
group by mth
