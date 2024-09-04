-- Retrieve all books and their authors
SELECT Books.Title, Authors.Name AS Author
FROM Books
JOIN Authors ON Books.AuthorID = Authors.AuthorID;

-- Retrieve all borrowers and the books they have borrowed
SELECT Borrowers.Name AS Borrower, Books.Title AS Book, BorrowingRecords.BorrowDate, BorrowingRecords.ReturnDate
FROM BorrowingRecords
JOIN Borrowers ON BorrowingRecords.BorrowerID = Borrowers.BorrowerID
JOIN Books ON BorrowingRecords.BookID = Books.BookID;

-- Retrieve all books currently borrowed 
SELECT Books.Title, Borrowers.Name AS Borrower
FROM BorrowingRecords
JOIN Books ON BorrowingRecords.BookID = Books.BookID
JOIN Borrowers ON BorrowingRecords.BorrowerID = Borrowers.BorrowerID
WHERE BorrowingRecords.ReturnDate IS NULL;
