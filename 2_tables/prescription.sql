CREATE TABLE Prescription (
    PrescriptionID INT PRIMARY KEY AUTO_INCREMENT,
    VisitID INT,
    MedicineID INT,
    Dosage VARCHAR(100),
    Duration VARCHAR(50),
    FOREIGN KEY (VisitID) REFERENCES Visit(VisitID),
    FOREIGN KEY (MedicineID) REFERENCES Medicine(MedicineID)
);
