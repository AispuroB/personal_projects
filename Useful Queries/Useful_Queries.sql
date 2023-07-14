-- Which books are most popular?
SELECT book_id, COUNT(*) AS num_transactions
FROM Transactions
GROUP BY book_id
ORDER BY num_transactions DESC;

-- Which borrowers have overdue books?
SELECT borrower_id
FROM Transactions
WHERE borrow_date < CURRENT_DATE - INTERVAL '30 days' AND return_date IS NULL;

-- Who are the most frequent borrowers?
SELECT borrower_id, COUNT(*) AS num_transactions
FROM Transactions
GROUP BY borrower_id
ORDER BY num_transactions DESC