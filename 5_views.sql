-- View 1: Patient Appointments with Doctor Info
CREATE VIEW ViewPatientAppointments AS
SELECT 
    p.PersonID AS PatientID,
    CONCAT(pr.FirstName, ' ', pr.LastName) AS PatientName,
    d.DoctorID,
    CONCAT(dp.FirstName, ' ', dp.LastName) AS DoctorName,
    a.AppointmentDate,
    a.AppointmentTime,
    a.Status,
    a.IsEmergency
FROM Appointment a
JOIN Patient p ON a.PatientID = p.PersonID
JOIN Person pr ON p.PersonID = pr.PersonID
JOIN Doctor d ON a.DoctorID = d.DoctorID
JOIN Person dp ON d.PersonID = dp.PersonID;

-- View 2: Visit Summary with Diagnosis and Notes
CREATE VIEW ViewVisitSummary AS
SELECT 
    v.VisitID,
    a.AppointmentID,
    CONCAT(pr.FirstName, ' ', pr.LastName) AS PatientName,
    CONCAT(dp.FirstName, ' ', dp.LastName) AS DoctorName,
    v.Diagnosis,
    v.Notes
FROM Visit v
JOIN Appointment a ON v.AppointmentID = a.AppointmentID
JOIN Patient p ON a.PatientID = p.PersonID
JOIN Person pr ON p.PersonID = pr.PersonID
JOIN Doctor d ON a.DoctorID = d.DoctorID
JOIN Person dp ON d.PersonID = dp.PersonID;

-- View 3: Prescription Details
CREATE VIEW ViewPrescriptionDetails AS
SELECT 
    pr.PrescriptionID,
    v.VisitID,
    m.Name AS MedicineName,
    pr.Dosage,
    pr.Duration
FROM Prescription pr
JOIN Visit v ON pr.VisitID = v.VisitID
JOIN Medicine m ON pr.MedicineID = m.MedicineID;

-- View 4: Emergency Appointments
CREATE VIEW ViewEmergencyAppointments AS
SELECT 
    a.AppointmentID,
    CONCAT(pn.FirstName, ' ', pn.LastName) AS PatientName,
    CONCAT(dn.FirstName, ' ', dn.LastName) AS DoctorName,
    a.AppointmentDate,
    a.AppointmentTime,
    a.Status
FROM Appointment a
JOIN Patient p ON a.PatientID = p.PersonID
JOIN Person pn ON p.PersonID = pn.PersonID
JOIN Doctor d ON a.DoctorID = d.DoctorID
JOIN Person dn ON d.PersonID = dn.PersonID
WHERE a.IsEmergency = TRUE;

-- View 5: Medicine Stock Overview
CREATE VIEW ViewMedicineStock AS
SELECT 
    m.MedicineID,
    m.Name,
    m.QuantityAvailable,
    m.ExpiryDate
FROM Medicine m;

-- View 6: Student Info with Department
CREATE VIEW ViewStudentInfo AS
SELECT 
    s.StudentID,
    CONCAT(p.FirstName, ' ', p.LastName) AS StudentName,
    d.DeptName,
    s.EnrollmentYear,
    c.Name AS CampusName
FROM Student s
JOIN Patient pt ON s.PatientID = pt.PersonID
JOIN Person p ON pt.PersonID = p.PersonID
JOIN Department d ON s.DeptID = d.DeptID
JOIN Campus c ON pt.CampusID = c.CampusID;
