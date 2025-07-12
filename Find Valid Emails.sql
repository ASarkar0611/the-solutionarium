Leetcode Question:
------------------

+-----------------+---------+
| Column Name     | Type    |
+-----------------+---------+
| user_id         | int     |
| email           | varchar |
+-----------------+---------+
(user_id) is the unique key for this table.
Each row contains a user''s unique ID and email address.
Write a solution to find all the valid email addresses. A valid email address meets the following criteria:

It contains exactly one @ symbol.
It ends with .com.
The part before the @ symbol contains only alphanumeric characters and underscores.
The part after the @ symbol and before .com contains a domain name that contains only letters.
Return the result table ordered by user_id in ascending order.

Solution:
---------

with t1 as
(select user_id, email,
right(email,4) as endswith,
length(email)-length(replace(email, '@', '')) as at_count,
substring_index(email, '@', 1) as emailid,
substring_index(substring_index(email, '.', 1), '@', -1) as domainname
from users)
select user_id, email from t1
where endswith = '.com'
and at_count = 1
and emailid regexp '^[a-zA-Z0-9]+$'
and domainname regexp '^[a-zA-Z]+$'
order by user_id
