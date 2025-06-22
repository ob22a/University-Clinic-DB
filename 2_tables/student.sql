CREATE TABLE Student (
    PatientID INT PRIMARY KEY,
    StudentID VARCHAR(20) UNIQUE,
    DeptID INT,
    EnrollmentYear YEAR,
    FOREIGN KEY (PatientID) REFERENCES Patient(PatientID),
    FOREIGN KEY (DeptID) REFERENCES Department(DeptID)
);
