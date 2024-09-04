INSERT INTO Authors (Name) VALUES 
('George Orwell'),
('J.K. Rowling'),
('J.R.R. Tolkien'),
('Agatha Christie'),
('Mark Twain'),
('Ernest Hemingway'),
('F. Scott Fitzgerald'),
('Jane Austen'),
('Charles Dickens'),
('Leo Tolstoy');

INSERT INTO Books (Title, AuthorID) VALUES 
('1984', 1),
('Harry Potter and the Philosopher''s Stone', 2), -- Escape single quote by doubling it
('The Hobbit', 3),
('Murder on the Orient Express', 4),
('Adventures of Huckleberry Finn', 5),
('The Old Man and the Sea', 6),
('The Great Gatsby', 7),
('Pride and Prejudice', 8),
('Great Expectations', 9),
('War and Peace', 10);

INSERT INTO Borrowers (Name) VALUES 
('John Doe'),
('Jane Smith'),
('Emily Johnson'),
('Michael Brown'),
('Sarah Davis'),
('David Wilson'),
('Chris Evans'),
('Sophia Lee'),
('Daniel Martinez'),
('Olivia White');

INSERT INTO BorrowingRecords (BookID, BorrowerID, BorrowDate, ReturnDate) VALUES 
(1, 1, '2023-09-01', '2023-09-15'),
(2, 2, '2023-09-02', NULL),
(3, 3, '2023-09-05', '2023-09-20'),
(4, 4, '2023-09-07', NULL),
(5, 5, '2023-09-10', '2023-09-25'),
(6, 6, '2023-09-12', NULL),
(7, 7, '2023-09-14', '2023-09-28'),
(8, 8, '2023-09-16', '2023-09-30'),
(9, 9, '2023-09-18', NULL),
(10, 10, '2023-09-20', NULL);
