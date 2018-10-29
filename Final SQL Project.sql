CREATE DATABASE Vanc_WA_Library;
USE Vanc_WA_Library;
GO


CREATE TABLE Library_Branch (
	BranchID INT PRIMARY KEY NOT NULL IDENTITY (60, 1),
	BranchName VARCHAR(50) NOT NULL,
	Address VARCHAR(50) NULL
	);

CREATE TABLE Publisher (
	PublisherName VARCHAR(50) PRIMARY KEY NOT NULL,
	Address VARCHAR(50) NULL,
	Phone VARCHAR(50) NOT NULL,
	);

CREATE TABLE Book_Copies (
	Number_Of_Copies INT NOT NULL,
	BookID INT FOREIGN KEY REFERENCES Books(BookID),
	BranchID INT FOREIGN KEY REFERENCES Library_Branch (BranchID),
	);


CREATE TABLE Book_Loans (
	BookID INT FOREIGN KEY REFERENCES Books(BookID),
	BranchID INT FOREIGN KEY REFERENCES Library_Branch(BranchID),
	CardNo INT FOREIGN KEY REFERENCES Borrower(CardNo),
	DateOut DATE NOT NULL,
	DateDue DATE NOT NULL
	);

CREATE TABLE Books (
	BookID INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	Title VARCHAR(100) NOT NULL,
	PublisherName VARCHAR(50) NOT NULL
	);

ALTER TABLE Books
	DROP CONSTRAINT [FK__Books__BranchID__37A5467C]
	;

CREATE TABLE Book_Authors (
	BookAuthor VARCHAR(50) NOT NULL,
	BookID INT FOREIGN KEY REFERENCES Books(BookID)
);


CREATE TABLE Borrower (
	CardNo INT PRIMARY KEY NOT NULL IDENTITY (239567, 1),
	Name VARCHAR(50) NOT NULL,
	Address VARCHAR(50) NULL,
	Phone VARCHAR(40) NOT NULL
	);

INSERT INTO Library_Branch (BranchName, Address) VALUES ('Sharpstown', '6948 NE 16th Ave, Vancouver, WA 97062')
INSERT INTO Library_Branch (BranchName, Address) VALUES	('Central', '8395 NE Green Dr, Vancouver, WA 97843')
INSERT INTO Library_Branch (BranchName, Address) VALUES	('Hazel Dell', '3059 NE Salmon Ave, Vancouver, WA 93858')
INSERT INTO Library_Branch (BranchName, Address) VALUES	('Vancouver Mall', '1488 E Mill Plain Blvd, Vancouver, WA 97045')
;
SELECT * FROM Library_Branch;


INSERT INTO Books (Title,PublisherName) VALUES ('The Lost Tribe', 'Random House')
INSERT INTO Books (Title,PublisherName) VALUES ('Tailchaser''s Song', 'DAW Books')
INSERT INTO Books (Title,PublisherName) VALUES ('A Clash of Kings', 'Bantam Books')
INSERT INTO Books (Title,PublisherName) VALUES ('A Storm of Swords', 'Bantam Books')
INSERT INTO Books (Title,PublisherName) VALUES	('A Feast for Crows', 'Bantam Books')
INSERT INTO Books (Title,PublisherName) VALUES	('A Dance with Dragons', 'Bantam Books')
INSERT INTO Books (Title,PublisherName) VALUES	('Fantastic Beasts and Where to Find Them', 'Scholastic')
INSERT INTO Books (Title,PublisherName) VALUES	('Fantastic Beasts: The Crimes of Grindelwald', 'Scholastic')
INSERT INTO Books (Title,PublisherName) VALUES	('The Hunger Games', 'Scholastic')
INSERT INTO Books (Title,PublisherName) VALUES	('Catching Fire', 'Scholastic')
INSERT INTO Books (Title,PublisherName) VALUES	('Mockingjay', 'Scholastic')
INSERT INTO Books (Title,PublisherName) VALUES	('Narnia: The Lion, the Witch and the Wardrobe', 'Harper Collins')
INSERT INTO Books (Title,PublisherName) VALUES	('Narnia: Prince Caspian', 'Harper Collins')
INSERT INTO Books (Title,PublisherName) VALUES	('Misery', 'Viking Press')
INSERT INTO Books (Title,PublisherName) VALUES	('Pet Sematary', 'Doubleday')
INSERT INTO Books (Title,PublisherName) VALUES	('Cells at Work', 'Kodansha USA')
INSERT INTO Books (Title,PublisherName) VALUES	('Return of the King', 'Bantam Books')
INSERT INTO Books (Title,PublisherName) VALUES	('Magic Knight Rayearth', 'Dark Horse')
INSERT INTO Books (Title,PublisherName) VALUES	('Tales from Earthsea', 'Harcourt')
INSERT INTO Books (Title,PublisherName) VALUES ('Narnia: Voyage of the Dawn Treader', 'Harper Collins')
;
SELECT * FROM Books;



INSERT INTO Publisher (PublisherName, Address, Phone) VALUES ('Random House', '4435 Randall Ln, New York, NY 89503', '212-315-9388')
INSERT INTO Publisher (PublisherName, Address, Phone) VALUES ('DAW Books', '4285 Adams Ave, Baltimore, MD 30285','301-585-8375')
INSERT INTO Publisher (PublisherName, Address, Phone) VALUES ('Bantam Books', '4295 Alpha St, Miami, FL 39958', '904-584-9385')
INSERT INTO Publisher (PublisherName, Address, Phone) VALUES ('Scholastic', '496 Broadway, New York, NY 18485', '613-698-9483')
INSERT INTO Publisher (PublisherName, Address, Phone) VALUES ('Harper Collins', '3582 Fairfax Dr, Los Angeles, CA 90014', '323-593-6849')
INSERT INTO Publisher (PublisherName, Address, Phone) VALUES ('Viking Press', '229 Jadewood Ave, Hackensack, NJ 95038', '201-683-3944')
INSERT INTO Publisher (PublisherName, Address, Phone) VALUES ('Doubleday', '1867 Meadowcrest Ln, Louisville, KY 40295', '606-385-8859')
INSERT INTO Publisher (PublisherName, Address, Phone) VALUES ('Kodansha USA', '472 Woodhill Ave, Dallas, TX, 75240', '938-597-2985')
INSERT INTO Publisher (PublisherName, Address, Phone) VALUES ('Dark Horse', '4783 Stoney Ln, Milwaukie, OR, 93058', '503-295-2295')
INSERT INTO Publisher (PublisherName, Address, Phone) VALUES ('Harcourt', '2817 Stone St, Pittsburgh, PA 19485', '602-285-9385')
;

SELECT * FROM Publisher;

INSERT INTO Book_Authors(BookAuthor, BookID) VALUES ('Stephen King', 16)
INSERT INTO Book_Authors(BookAuthor, BookID) VALUES	('JK Rowling', 8)
INSERT INTO Book_Authors(BookAuthor, BookID) VALUES	('JK Rowling', 9)
INSERT INTO Book_Authors(BookAuthor, BookID) VALUES	('Suzanne Collins', 11)
INSERT INTO Book_Authors(BookAuthor, BookID) VALUES	('George RR Martin', 4)
INSERT INTO Book_Authors(BookAuthor, BookID) VALUES	('George RR Martin', 5)
INSERT INTO Book_Authors(BookAuthor, BookID) VALUES	('George RR Martin', 6)
INSERT INTO Book_Authors(BookAuthor, BookID) VALUES	('George RR Martin', 7)
INSERT INTO Book_Authors(BookAuthor, BookID) VALUES	('CS Lewis', 13)
INSERT INTO Book_Authors(BookAuthor, BookID) VALUES	('Suzanne Collins', 10)
INSERT INTO Book_Authors(BookAuthor, BookID) VALUES	('Suzanne Collins', 12)
INSERT INTO Book_Authors(BookAuthor, BookID) VALUES	('CS Lewis', 14)
INSERT INTO Book_Authors(BookAuthor, BookID) VALUES	('CS Lewis', 21)
INSERT INTO Book_Authors(BookAuthor, BookID) VALUES	('Tad Williams', 3)
INSERT INTO Book_Authors(BookAuthor, BookID) VALUES	('JRR Tolkien', 18)
INSERT INTO Book_Authors(BookAuthor, BookID) VALUES	('Akane Shimizu', 17)
INSERT INTO Book_Authors(BookAuthor, BookID) VALUES	('Ursula K LeGuin', 20)
INSERT INTO Book_Authors(BookAuthor, BookID) VALUES	('CLAMP', 19)
INSERT INTO Book_Authors(BookAuthor, BookID) VALUES ('Oscar Russell', 2)
INSERT INTO Book_Authors(BookAuthor, BookID) VALUES ('Stephen King', 15)
;
UPDATE Book_Authors
SET BookID= 19
WHERE BookAuthor= 'CLAMP';

SELECT * FROM Book_Authors
ORDER BY BookID;



INSERT INTO Book_Copies (Number_Of_Copies,BookID,BranchID) VALUES (3, 2, 60)
INSERT INTO Book_Copies (Number_Of_Copies,BookID,BranchID) VALUES (3, 3, 61)
INSERT INTO Book_Copies (Number_Of_Copies,BookID,BranchID) VALUES (2, 4, 62)
INSERT INTO Book_Copies (Number_Of_Copies,BookID,BranchID) VALUES (4, 5, 63)
INSERT INTO Book_Copies (Number_Of_Copies,BookID,BranchID) VALUES (3, 6, 60)
INSERT INTO Book_Copies (Number_Of_Copies,BookID,BranchID) VALUES (3, 7, 61)
INSERT INTO Book_Copies (Number_Of_Copies,BookID,BranchID) VALUES (3, 8, 62)
INSERT INTO Book_Copies (Number_Of_Copies,BookID,BranchID) VALUES (2, 9, 63)
INSERT INTO Book_Copies (Number_Of_Copies,BookID,BranchID) VALUES (4, 10, 60)
INSERT INTO Book_Copies (Number_Of_Copies,BookID,BranchID) VALUES (2, 11, 61)
INSERT INTO Book_Copies (Number_Of_Copies,BookID,BranchID) VALUES (3, 12, 62)
INSERT INTO Book_Copies (Number_Of_Copies,BookID,BranchID) VALUES (3, 13, 63)
INSERT INTO Book_Copies (Number_Of_Copies,BookID,BranchID) VALUES (2, 14, 60)
INSERT INTO Book_Copies (Number_Of_Copies,BookID,BranchID) VALUES (6, 15, 61)
INSERT INTO Book_Copies (Number_Of_Copies,BookID,BranchID) VALUES(3, 16, 62)
INSERT INTO Book_Copies (Number_Of_Copies,BookID,BranchID) VALUES (2, 17, 63)
INSERT INTO Book_Copies (Number_Of_Copies,BookID,BranchID) VALUES (3, 18, 60)
INSERT INTO Book_Copies (Number_Of_Copies,BookID,BranchID) VALUES (3, 19, 61)
INSERT INTO Book_Copies (Number_Of_Copies,BookID,BranchID) VALUES (2, 20, 62)
INSERT INTO Book_Copies (Number_Of_Copies,BookID,BranchID) VALUES (4, 21, 63)
INSERT INTO Book_Copies (Number_Of_Copies,BookID,BranchID) VALUES (2, 16, 61)
INSERT INTO Book_Copies (Number_Of_Copies,BookID,BranchID) VALUES (4, 2, 62)
INSERT INTO Book_Copies (Number_Of_Copies,BookID,BranchID) VALUES (0, 2, 61)
INSERT INTO Book_Copies (Number_Of_Copies,BookID,BranchID) VALUES (0, 2, 63)
;
	 	
SELECT * FROM Book_Copies;

DELETE Book_Copies
WHERE BookID = 15;

UPDATE Book_Copies
SET Number_Of_Copies = 8
WHERE BookID = 5

INSERT INTO Borrower(Name, Address, Phone) VALUES ('Miki Koishikawa','4501 Chapman Ln, Los Angeles, CA 94857', '603-592-6935')
INSERT INTO Borrower(Name, Address, Phone) VALUES ('Umi Ryuuzaki', '4938 Redbud Dr, Albany, NY 11530', '375-396-0596')
INSERT INTO Borrower(Name, Address, Phone) VALUES ('Hermione Granger', '4935 Deer Ln, Niagara Falls, NY 10495', '835-684-7948')
INSERT INTO Borrower(Name, Address, Phone) VALUES ('Susan Pevensie', '3954 Elk Ave, Houston, TX 79948', '732-597-3958')
INSERT INTO Borrower(Name, Address, Phone) VALUES ('Primrose Everdeen', '3895 Panem Ave, Los Angeles, CA 93356', '323-694-7948')
INSERT INTO Borrower(Name, Address, Phone) VALUES ('Joie Marlowe', '395 Meadow Dr, Fargo, ND 59386', '703-704-2958')
INSERT INTO Borrower(Name, Address, Phone) VALUES ('Tyrion Lannister', '4693 Westeros Dr, Cincinatti, OH 44928', '330-587-2958')
INSERT INTO Borrower(Name, Address, Phone) VALUES ('Niki Taylor', '3067 Birch St, Indianapolis, IN 46225', '317-596-3986')
;
SELECT * FROM Books;
SELECT * FROM Borrower;

INSERT INTO Book_Loans(BookID, BranchID, CardNo, DateOut, DateDue) VALUES (2, 60, 239572, '2018-10-24', '2018-11-06')
INSERT INTO Book_Loans(BookID, BranchID, CardNo, DateOut, DateDue) VALUES (3, 61, 239573, '2018-11-01', '2018-11-14')
INSERT INTO Book_Loans(BookID, BranchID, CardNo, DateOut, DateDue) VALUES (4, 62, 239568, '2018-09-07', '2018-09-21')
INSERT INTO Book_Loans(BookID, BranchID, CardNo, DateOut, DateDue) VALUES (5, 63, 239570, '2018-12-01', '2018-12-15')
INSERT INTO Book_Loans(BookID, BranchID, CardNo, DateOut, DateDue) VALUES (6, 60, 239570, '2018-12-01', '2018-12-15')
INSERT INTO Book_Loans(BookID, BranchID, CardNo, DateOut, DateDue) VALUES (7, 60, 239572, '2018-10-24', '2018-11-06')
INSERT INTO Book_Loans(BookID, BranchID, CardNo, DateOut, DateDue) VALUES (8, 60, 239572, '2018-10-24', '2018-11-06')
INSERT INTO Book_Loans(BookID, BranchID, CardNo, DateOut, DateDue) VALUES (9, 60, 239572, '2018-10-24', '2018-11-06')
INSERT INTO Book_Loans(BookID, BranchID, CardNo, DateOut, DateDue) VALUES (10, 60, 239572, '2018-10-24', '2018-11-06')
INSERT INTO Book_Loans(BookID, BranchID, CardNo, DateOut, DateDue) VALUES (11, 60, 239572, '2018-10-24', '2018-11-06')
INSERT INTO Book_Loans(BookID, BranchID, CardNo, DateOut, DateDue) VALUES (12, 60, 239572, '2018-10-24', '2018-11-06')
INSERT INTO Book_Loans(BookID, BranchID, CardNo, DateOut, DateDue) VALUES (13, 60, 239572, '2018-10-24', '2018-11-06')
INSERT INTO Book_Loans(BookID, BranchID, CardNo, DateOut, DateDue) VALUES (14, 60, 239572, '2018-10-24', '2018-11-06')
INSERT INTO Book_Loans(BookID, BranchID, CardNo, DateOut, DateDue) VALUES (15, 60, 239572, '2018-10-24', '2018-11-06')
INSERT INTO Book_Loans(BookID, BranchID, CardNo, DateOut, DateDue) VALUES (16, 60, 239572, '2018-10-24', '2018-11-06')
INSERT INTO Book_Loans(BookID, BranchID, CardNo, DateOut, DateDue) VALUES (17, 60, 239572, '2018-10-24', '2018-11-06')
INSERT INTO Book_Loans(BookID, BranchID, CardNo, DateOut, DateDue) VALUES (18, 60, 239572, '2018-10-24', '2018-11-06')
INSERT INTO Book_Loans(BookID, BranchID, CardNo, DateOut, DateDue) VALUES (19, 60, 239572, '2018-10-24', '2018-11-06')
INSERT INTO Book_Loans(BookID, BranchID, CardNo, DateOut, DateDue) VALUES (20, 60, 239572, '2018-10-24', '2018-11-06')
INSERT INTO Book_Loans(BookID, BranchID, CardNo, DateOut, DateDue) VALUES (21, 60, 239572, '2018-10-24', '2018-11-06')
INSERT INTO Book_Loans(BookID, BranchID, CardNo, DateOut, DateDue) VALUES (2, 60, 239572, '2018-10-24', '2018-11-06')
INSERT INTO Book_Loans(BookID, BranchID, CardNo, DateOut, DateDue) VALUES (3, 61, 239573, '2018-11-01', '2018-11-14')
INSERT INTO Book_Loans(BookID, BranchID, CardNo, DateOut, DateDue) VALUES (4, 62, 239574, '2018-09-07', '2018-09-21')
INSERT INTO Book_Loans(BookID, BranchID, CardNo, DateOut, DateDue) VALUES (5, 63, 239570, '2018-12-01', '2018-12-15')
INSERT INTO Book_Loans(BookID, BranchID, CardNo, DateOut, DateDue) VALUES (6, 60, 239570, '2018-12-01', '2018-12-15')
INSERT INTO Book_Loans(BookID, BranchID, CardNo, DateOut, DateDue) VALUES (7, 60, 239572, '2018-10-24', '2018-11-06')
INSERT INTO Book_Loans(BookID, BranchID, CardNo, DateOut, DateDue) VALUES (8, 60, 239572, '2018-10-24', '2018-11-06')
INSERT INTO Book_Loans(BookID, BranchID, CardNo, DateOut, DateDue) VALUES (9, 60, 239572, '2018-10-24', '2018-11-06')
INSERT INTO Book_Loans(BookID, BranchID, CardNo, DateOut, DateDue) VALUES (10, 60, 239572, '2018-10-24', '2018-11-06')
INSERT INTO Book_Loans(BookID, BranchID, CardNo, DateOut, DateDue) VALUES (11, 60, 239572, '2018-10-24', '2018-11-06')
INSERT INTO Book_Loans(BookID, BranchID, CardNo, DateOut, DateDue) VALUES (12, 60, 239572, '2018-10-24', '2018-11-06')
INSERT INTO Book_Loans(BookID, BranchID, CardNo, DateOut, DateDue) VALUES (13, 60, 239572, '2018-10-24', '2018-11-06')
INSERT INTO Book_Loans(BookID, BranchID, CardNo, DateOut, DateDue) VALUES (14, 60, 239572, '2018-10-24', '2018-11-06')
INSERT INTO Book_Loans(BookID, BranchID, CardNo, DateOut, DateDue) VALUES (15, 60, 239572, '2018-10-24', '2018-11-06')
INSERT INTO Book_Loans(BookID, BranchID, CardNo, DateOut, DateDue) VALUES (16, 60, 239572, '2018-10-24', '2018-11-06')
INSERT INTO Book_Loans(BookID, BranchID, CardNo, DateOut, DateDue) VALUES (17, 60, 239572, '2018-10-24', '2018-11-06')
INSERT INTO Book_Loans(BookID, BranchID, CardNo, DateOut, DateDue) VALUES (18, 60, 239572, '2018-10-24', '2018-11-06')
INSERT INTO Book_Loans(BookID, BranchID, CardNo, DateOut, DateDue) VALUES (19, 60, 239572, '2018-10-24', '2018-11-06')
INSERT INTO Book_Loans(BookID, BranchID, CardNo, DateOut, DateDue) VALUES (20, 60, 239572, '2018-10-24', '2018-11-06')
INSERT INTO Book_Loans(BookID, BranchID, CardNo, DateOut, DateDue) VALUES (21, 60, 239572, '2018-10-24', '2018-11-06')
INSERT INTO Book_Loans(BookID, BranchID, CardNo, DateOut, DateDue) VALUES (11, 60, 239572, '2018-10-24', '2018-11-06')
INSERT INTO Book_Loans(BookID, BranchID, CardNo, DateOut, DateDue) VALUES (12, 60, 239572, '2018-10-24', '2018-11-06')
INSERT INTO Book_Loans(BookID, BranchID, CardNo, DateOut, DateDue) VALUES (13, 60, 239572, '2018-10-24', '2018-11-06')
INSERT INTO Book_Loans(BookID, BranchID, CardNo, DateOut, DateDue) VALUES (14, 60, 239572, '2018-10-24', '2018-11-06')
INSERT INTO Book_Loans(BookID, BranchID, CardNo, DateOut, DateDue) VALUES (15, 60, 239572, '2018-10-24', '2018-11-06')
INSERT INTO Book_Loans(BookID, BranchID, CardNo, DateOut, DateDue) VALUES (16, 60, 239572, '2018-10-24', '2018-11-06')
INSERT INTO Book_Loans(BookID, BranchID, CardNo, DateOut, DateDue) VALUES (17, 60, 239572, '2018-10-24', '2018-11-06')
INSERT INTO Book_Loans(BookID, BranchID, CardNo, DateOut, DateDue) VALUES (18, 60, 239572, '2018-10-24', '2018-11-06')
INSERT INTO Book_Loans(BookID, BranchID, CardNo, DateOut, DateDue) VALUES (19, 60, 239572, '2018-10-24', '2018-11-06')
INSERT INTO Book_Loans(BookID, BranchID, CardNo, DateOut, DateDue) VALUES (20, 60, 239572, '2018-10-24', '2018-11-06')
INSERT INTO Book_Loans(BookID, BranchID, CardNo, DateOut, DateDue) VALUES (21, 60, 239572, '2018-11-16', '2018-11-30')
;	
	
SELECT COUNT (CardNo)
FROM Book_Loans
WHERE CardNo= 239570;


UPDATE Book_Loans
SET CardNo = 239571
WHERE BookID = 11;

/*1.) How many copies of the book titled "The Lost Tribe" are owned by the library branch 
whose name is "Sharpstown"?*/

CREATE PROC GetBookCopies
AS
BEGIN
	SELECT Title, Number_Of_Copies, BranchName FROM Books
	INNER JOIN Book_Copies ON Books.BookID= Book_Copies.BookID
	INNER JOIN Library_Branch ON Library_Branch.BranchID = Book_Copies.BranchID
	WHERE BranchName= 'Sharpstown' AND Title= 'The Lost Tribe' ;

END
GO



/*2.) How many copies of the book titled "The Lost Tribe" are owned by each library 
branch?*/

ALTER PROC GetLostTribeCopies 
AS
BEGIN


SELECT Number_of_Copies, Title, BranchName FROM Book_Copies
INNER JOIN Books ON Books.BookID = Book_Copies.BookID
INNER JOIN Library_Branch ON Library_Branch.BranchID = Book_Copies.BranchID
WHERE Title = 'The Lost Tribe'
;

END
GO

/*3.) Retrieve the names of all borrowers who do not have any books checked out.*/

CREATE PROC GetNoBooksOut
AS
BEGIN

SELECT Name, DateOut FROM Borrower
LEFT JOIN Book_Loans ON Borrower.CardNo = Book_Loans.CardNo
WHERE DateOut IS NULL;

END
GO

/*4.) For each book that is loaned out from the "Sharpstown" branch and whose DueDate is 
today(Assume today's date is 10-25-18), retrieve the book title, the borrower's name, and 
the borrower's address.*/

CREATE PROC SharpstownCheckout
AS
BEGIN

SELECT DISTINCT Books.Title, Borrower.Name, Borrower.Address from Books
INNER JOIN Book_Loans ON Book_Loans.BookID = Books.BookID
INNER JOIN Borrower on Borrower.CardNo = Book_Loans.CardNo
INNER JOIN Library_Branch on Library_Branch.BranchID = Book_Loans.BranchID
WHERE Book_Loans.BranchID = 60 and Book_Loans.DateDue = '2018-10-25'

END
GO

/*5.) For each library branch, retrieve the branch name and the total number of books 
loaned out from that branch.*/

CREATE PROC GetTotalLoanedOut
AS
BEGIN

SELECT BranchName, COUNT(*) AS TotalOut FROM Book_Loans, Library_Branch 
WHERE Book_Loans.BranchID = Library_Branch.BranchID
GROUP BY BranchName;

END
GO


/*6.) Retrieve the names, addresses, and the number of books checked out for all 
borrowers who have more than five books checked out.*/

CREATE PROC GetMultipleBorrowers
AS
BEGIN

SELECT COUNT(Book_Loans.CardNo) AS NumberCheckedOut,Name,Address 
FROM Book_Loans
INNER JOIN Borrower ON Book_Loans.CardNo = Borrower.CardNo
GROUP BY Book_Loans.CardNo,Borrower.Name,Borrower.Address
HAVING COUNT (Book_Loans.CardNo) > 5;

END


/*7.) For each book authored (or co-authored) by "Stephen King", retrieve the title and the 
number of copies owned by the library branch whose name is "Central".*/

CREATE PROC GetStephenKingCopies
AS
BEGIN

SELECT BookAuthor AS Author, Title, Number_Of_Copies, BranchName AS Branch FROM Book_Authors
INNER JOIN Book_Copies ON Book_Copies.BookID = Book_Authors.BookID
INNER JOIN Library_Branch ON Library_Branch.BranchID = Book_Copies.BranchID
INNER JOIN Books ON Books.BookID = Book_Authors.BookID
WHERE BookAuthor = 'Stephen King' AND BranchName = 'Central';

END