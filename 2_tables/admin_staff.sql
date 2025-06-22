CREATE TABLE AdminStaff (
    PersonID INT PRIMARY KEY,  -- Inherits from Person
    StaffID INT UNIQUE,  -- Candidate key
    RoleID INT,
    Email VARCHAR(100),
    CampusID INT,
    FOREIGN KEY (PersonID) REFERENCES Person(PersonID),
    FOREIGN KEY (RoleID) REFERENCES StaffRole(RoleID),
    FOREIGN KEY (CampusID) REFERENCES Campus(CampusID)
);
