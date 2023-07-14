-- Update the Transactions table to set the return_date for a transaction.
UPDATE Transactions
SET return_date = CURRENT_DATE
WHERE transaction_id = 1 AND book_id = 2;

-- Update the availability_status of the book to represent that it is now available.
UPDATE Books
SET availability_status = TRUE
WHERE book_id = 2;