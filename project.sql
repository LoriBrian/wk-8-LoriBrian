-- ============================================
-- Project Title: Library Management System
-- Author: Brian Kipkemoi Lorishiat
-- Description: SQL schema for a library system
-- ============================================

-- Drop tables if they already exist (for clean re-run)
DROP TABLE IF EXISTS BorrowRecords;
DROP TABLE IF EXISTS Books;
DROP TABLE IF EXISTS Members;
DROP TABLE IF EXISTS Authors;

-- ============================================
-- Table: Authors
-- One-to-Many: One author can write many books
-- ============================================
CREATE TABLE Authors (
    author_id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    nationality VARCHAR(50),
    UNIQUE(full_name)
);

-- ============================================
-- Table: Books
-- Many-to-One: Each book has one author
-- ============================================
CREATE TABLE Books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(150) NOT NULL,
    author_id INT,
    genre VARCHAR(50),
    isbn VARCHAR(20) UNIQUE,
    available BOOLEAN DEFAULT TRUE,
    FOREIGN KEY (author_id) REFERENCES Authors(author_id)
);

-- ============================================
-- Table: Members
-- Stores member details
-- ============================================
CREATE TABLE Members (
    member_id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    join_date DATE NOT NULL
);

-- ============================================
-- Table: BorrowRecords
-- Many-to-Many: Members can borrow many books; books can be borrowed by many members
-- ============================================
CREATE TABLE BorrowRecords (
    record_id INT AUTO_INCREMENT PRIMARY KEY,
    member_id INT NOT NULL,
    book_id INT NOT NULL,
    borrow_date DATE NOT NULL,
    return_date DATE,
    FOREIGN KEY (member_id) REFERENCES Members(member_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
);

-- ============================================
-- Sample Data Insertion (Optional)
-- ============================================
-- INSERT INTO Authors (full_name, nationality) VALUES ('J.K. Rowling', 'British');
-- INSERT INTO Books (title, author_id, genre, isbn) VALUES ('Harry Potter', 1, 'Fantasy', '978-0439708180');

-- Add additional sample inserts if needed
