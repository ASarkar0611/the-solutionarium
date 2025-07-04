# Write your MySQL query statement below

select s.student_id, s.student_name, sb.subject_name, count(e.student_id) as attended_exams
from students s
cross join subjects sb
left join examinations e on e.student_id = s.student_id and e.subject_name = sb.subject_name
group by s.student_id, s.student_name, sb.subject_name
order by s.student_id, sb.subject_name;