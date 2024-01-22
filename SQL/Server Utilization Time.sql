-- Server Utilization Time [Amazon SQL Interview Question]

with start_log AS
(SELECT *,
        RANK() OVER(PARTITION BY server_id ORDER BY status_time) as start_rank
FROM server_utilization
WHERE session_status = 'start'
ORDER BY server_id, status_time),

stop_log AS
(SELECT *,
        RANK() OVER(PARTITION BY server_id ORDER BY status_time) as stop_rank
FROM server_utilization
WHERE session_status = 'stop'
ORDER BY server_id, status_time)

SELECT SUM( 
       CASE DATE_PART('day', (sl2.status_time - sl1.status_time)) 
          WHEN 0 THEN 1
          ELSE DATE_PART('day', (sl2.status_time - sl1.status_time))
       END) AS total_uptime_days
FROM start_log sl1
JOIN stop_log sl2 ON sl1.server_id = sl2.server_id 
                 AND sl1. start_rank = sl2.stop_rank
