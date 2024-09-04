CREATE TABLE Authors (
    AuthorID SERIAL PRIMARY KEY,
    Name VARCHAR(100) NOT NULL
);

CREATE TABLE Books (
    BookID SERIAL PRIMARY KEY,
    Title VARCHAR(255) NOT NULL,
    AuthorID INT,
    FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID)
);

CREATE TABLE Borrowers (
    BorrowerID SERIAL PRIMARY KEY,
    Name VARCHAR(100) NOT NULL
);

CREATE TABLE BorrowingRecords (
    RecordID SERIAL PRIMARY KEY,
    BookID INT,
    BorrowerID INT,
    BorrowDate DATE,
    ReturnDate DATE,
    FOREIGN KEY (BookID) REFERENCES Books(BookID),
    FOREIGN KEY (BorrowerID) REFERENCES Borrowers(BorrowerID)
);
