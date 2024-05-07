-- Patient Support Analysis (Part 2) [UnitedHealth SQL Interview Question]

SELECT (count(*)::FLOAT / (SELECT COUNT(*) FROM callers)) * 100 AS uncategorised_call_pct
FROM callers
WHERE call_category is null OR call_category = 'n/a';
