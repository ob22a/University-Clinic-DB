CREATE TABLE Patient (
    PersonID INT PRIMARY KEY, -- Inherits from Person
    CampusID INT NOT NULL,
    FOREIGN KEY (PersonID) REFERENCES Person(PersonID),
    FOREIGN KEY (CampusID) REFERENCES Campus(CampusID)
);
