-- Search feature using FTS5.

-- Step 1:
CREATE VIRTUAL TABLE BooksFTS USING fts5(title, author);

-- Step 2:
INSERT INTO BooksFTS(title, author)
SELECT B.title, A.name 
FROM Books B 
JOIN Authors A ON B.author_id = A.author_id;

-- Step 3: 
SELECT * FROM BooksFTS WHERE BooksFTS MATCH 'Rowling';