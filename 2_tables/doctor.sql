CREATE TABLE Doctor (
    PersonID INT PRIMARY KEY,  -- Inherits from Person
    DoctorID INT UNIQUE,  -- Candidate Key
    Specialty VARCHAR(100),
    Email VARCHAR(100),
    CampusID INT,
    FOREIGN KEY (PersonID) REFERENCES Person(PersonID),
    FOREIGN KEY (CampusID) REFERENCES Campus(CampusID)
);
