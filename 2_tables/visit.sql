CREATE TABLE Visit (
    VisitID INT PRIMARY KEY AUTO_INCREMENT,
    AppointmentID INT UNIQUE,
    Diagnosis TEXT,
    Notes TEXT,
    FOREIGN KEY (AppointmentID) REFERENCES Appointment(AppointmentID)
);
