-- Signup Activation Rate [TikTok SQL Interview Question]

WITH signup_action_table AS
(SELECT t2.signup_action,
       COUNT(t2.email_id) as email_cnt
  FROM
      (SELECT t1.email_id, 
                COALESCE(tx.signup_action, 'Not Confirmed') AS signup_action
        FROM
            (SELECT e.email_id, MAX(t.text_id) as max_txt_id
              FROM emails e
          LEFT JOIN texts t ON t.email_id = e.email_id
          GROUP BY e.email_id) t1
          LEFT JOIN texts tx ON t1.max_txt_id = tx.text_id) t2
GROUP BY t2.signup_action)


SELECT 
      ROUND((SELECT email_cnt 
         FROM signup_action_table 
        WHERE signup_action = 'Confirmed')/SUM(email_cnt),2) AS confirm_rate
FROM signup_action_table
