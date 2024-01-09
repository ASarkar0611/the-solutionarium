-- Page With No Likes [Facebook SQL Interview Question]

SELECT page_id FROM pages p
where not EXISTS (SELECT 1 from page_likes pl
where pl.page_id = p.page_id);
