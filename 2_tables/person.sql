CREATE TABLE Person (
    PersonID INT PRIMARY KEY,
    FirstName VARCHAR(100),
    LastName VARCHAR(100),
    Gender ENUM('Male', 'Female'),
    DOB DATE,
    Phone VARCHAR(20)
);
