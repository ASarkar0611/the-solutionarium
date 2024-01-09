-- Data Science Skills [LinkedIn SQL Interview Question]

SELECT candidate_id FROM (SELECT candidate_id, COUNT(skill) as skill_cnt
FROM candidates
WHERE skill in ('Python', 'Tableau', 'PostgreSQL')
GROUP BY 1) T
WHERE skill_cnt = 3;
