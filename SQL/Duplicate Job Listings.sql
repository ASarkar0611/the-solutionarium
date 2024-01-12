-- Duplicate Job Listings [Linkedin SQL Interview Question]

select count(DISTINCT company_id) as co_w_duplicate_jobs
from job_listings j1
where (select count(job_id) from job_listings j2
where j2.company_id = j1.company_id
and j1.description = j2.description) > 1
;
