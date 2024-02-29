-- Cards Issued Difference [JPMorgan Chase SQL Interview Question]

SELECT card_name, (MAX(issued_amount) - MIN(issued_amount)) as difference
FROM monthly_cards_issued
GROUP BY card_name
ORDER BY difference DESC;
