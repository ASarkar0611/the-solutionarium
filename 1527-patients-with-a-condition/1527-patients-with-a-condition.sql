# Write your MySQL query statement below
select * from patients
where regexp_like(conditions, ' +DIAB1|^DIAB1')