-- Most popular books
SELECT book_id, COUNT(*) AS num_transactions
FROM Transactions
GROUP BY book_id
ORDER BY num_transactions DESC;

-- Borrowers with overdue books
SELECT borrower_id
FROM Transactions
WHERE borrow_date < DATE('now','-30 days') AND return_date IS NULL;

-- Most frequent borrowers
SELECT borrower_id, COUNT(*) AS num_transactions
FROM Transactions
GROUP BY borrower_id
ORDER BY num_transactions DESC;