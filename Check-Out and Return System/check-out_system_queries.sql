-- Insert a new row into the Transactions table to represent the new transaction.
INSERT INTO Transactions (borrower_id, book_id, borrow_date)
VALUES (1, 2, CURRENT_DATE);

-- Update the availability_status of the book to represent that it is now unavailable.
UPDATE Books
SET availability_status = FALSE
WHERE book_id = 2;