-- International Call Percentage [Verizon SQL Interview Question]

with caller_receiver_details AS
(SELECT pc.caller_id,
       (SELECT pi.country_id 
          FROM phone_info pi 
         WHERE pi.caller_id = pc.caller_id) AS caller_country,
       pc.receiver_id,
       (SELECT pi.country_id 
          FROM phone_info pi 
         WHERE pi.caller_id = pc.receiver_id) AS receiver_country
FROM phone_calls pc)

SELECT ROUND(international_calls_pct::numeric,1) as international_calls_pct
FROM
(SELECT (COUNT(*)::numeric / (SELECT COUNT(*) FROM caller_receiver_details)) * 100 AS international_calls_pct
FROM caller_receiver_details
WHERE caller_country <> receiver_country) t
