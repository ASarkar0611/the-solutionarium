-- Card Launch Success [JPMorgan Chase SQL Interview Question]


SELECT card_name, issued_amount
FROM (SELECT * ,
      RANK() OVER(PARTITION BY card_name ORDER BY issue_year, issue_month) as rn
FROM monthly_cards_issued
ORDER BY card_name) t
WHERE rn = 1
ORDER BY issued_amount DESC;
