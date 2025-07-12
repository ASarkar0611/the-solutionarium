Question:
---------

Table:  logs

+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| log_id      | int     |
| ip          | varchar |
| status_code | int     |
+-------------+---------+
log_id is the unique key for this table.
Each row contains server access log information including IP address and HTTP status code.
Write a solution to find invalid IP addresses. An IPv4 address is invalid if it meets any of these conditions:

Contains numbers greater than 255 in any octet
Has leading zeros in any octet (like 01.02.03.04)
Has less or more than 4 octets
Return the result table ordered by invalid_count, ip in descending order respectively. 

Solution:
---------

select ip, count(log_id) as invalid_count from logs
where (length(ip)-length(replace(ip, '.',''))+1) <> 4
or cast(substring_index(ip, '.', 1) as unsigned) > 255
or cast(substring_index(substring_index(ip, '.', 2), '.', -1) as unsigned) > 255
or cast(substring_index(substring_index(ip, '.', 3), '.', -1) as unsigned) > 255
or cast(substring_index(ip, '.', -1) as unsigned) > 255
or left(substring_index(ip, '.', 1),1) = '0'
or left(substring_index(substring_index(ip, '.', 2), '.', -1),1) = '0'
or left(substring_index(substring_index(ip, '.', 3), '.', -1),1) = '0'
or left(substring_index(ip, '.', -1),1) = '0'
group by ip
order by invalid_count desc, ip desc;
