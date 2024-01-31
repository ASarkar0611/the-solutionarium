-- Advertiser Status [Facebook SQL Interview Question]

SELECT 
      CASE
        WHEN advertiser_id IS NOT NULL AND paid_id IS NULL THEN advertiser_id
        ELSE paid_id
      END AS user_id,
      CASE
        WHEN advertiser_id IS NOT NULL AND paid_id IS NULL THEN 'CHURN'
        WHEN advertiser_id IS NOT NULL AND paid_id IS NOT NULL THEN
             CASE 
              WHEN current_status != 'CHURN' THEN 'EXISTING'
              ELSE 'RESURRECT' END
        WHEN advertiser_id IS NULL AND paid_id IS NOT NULL THEN 'NEW'
      END AS new_status

FROM
(SELECT a.user_id AS advertiser_id, a.status AS current_status,
       dp.user_id AS paid_id, dp.paid
  FROM advertiser a
FULL OUTER JOIN daily_pay dp ON a.user_id = dp.user_id) t1
ORDER BY user_id
