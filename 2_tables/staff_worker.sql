CREATE TABLE StaffWorker (
    PatientID INT PRIMARY KEY,
    RoleID INT,
    WorkUnit VARCHAR(100),
    FOREIGN KEY (PatientID) REFERENCES Patient(PatientID),
    FOREIGN KEY (RoleID) REFERENCES StaffRole(RoleID)
);
