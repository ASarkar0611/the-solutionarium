Leetcode Question:
+----------------+  

Write a solution to find the students who have shown improvement. A student is considered to have shown improvement if they meet both of these conditions:
  1. Have taken exams in the same subject on at least two different dates
  2. Their latest score in that subject is higher than their first score
 Return the result table ordered by student_id, subject in ascending order.

Scores table:
+-----------+  

+------------+----------+-------+------------+
| student_id | subject  | score | exam_date  |
+------------+----------+-------+------------+
| 101        | Math     | 70    | 2023-01-15 |
| 101        | Math     | 85    | 2023-02-15 |
| 101        | Physics  | 65    | 2023-01-15 |
| 101        | Physics  | 60    | 2023-02-15 |
| 102        | Math     | 80    | 2023-01-15 |
| 102        | Math     | 85    | 2023-02-15 |
| 103        | Math     | 90    | 2023-01-15 |
| 104        | Physics  | 75    | 2023-01-15 |
| 104        | Physics  | 85    | 2023-02-15 |
+------------+----------+-------+------------+

Solution (MySQL):
+---------------+  

with t1 as
(select student_id, subject, min(exam_date) as first_ed, max(exam_date) as latest_ed
from scores
group by student_id, subject),

t2 as
(
select s.student_id, s.subject,
case exam_date
when t1.first_ed then score
else 0
end as first_score,
case exam_date
when t1.latest_ed then score
else 0
end as latest_score
from scores s
inner join t1 on t1.student_id = s.student_id and t1.subject = s.subject),

t3 as
(select student_id, subject, sum(first_score) as first_score, sum(latest_score) as latest_score 
from t2
group by student_id, subject)

select * from t3
where latest_score > first_score
order by student_id, subject;
