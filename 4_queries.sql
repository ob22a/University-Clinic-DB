-- a. Join patients with appointments and doctors
SELECT 
    p.PersonID AS PatientID,
    CONCAT(pr.FirstName, ' ', pr.LastName) AS PatientName,
    a.AppointmentID,
    a.AppointmentDate,
    a.AppointmentTime,
    d.DoctorID,
    CONCAT(dp.FirstName, ' ', dp.LastName) AS DoctorName
FROM 
    Appointment a
JOIN Patient p ON a.PatientID = p.PersonID
JOIN Person pr ON p.PersonID = pr.PersonID
JOIN Doctor d ON a.DoctorID = d.DoctorID
JOIN Person dp ON d.PersonID = dp.PersonID;

-- b. List all emergency appointments
SELECT *
FROM Appointment
WHERE IsEmergency = TRUE;

-- c. View prescriptions for a specific visit (example: VisitID = 1)
SELECT 
    pr.PrescriptionID,
    pr.VisitID,
    m.Name AS MedicineName,
    pr.Dosage,
    pr.Duration
FROM Prescription pr
JOIN Medicine m ON pr.MedicineID = m.MedicineID
WHERE pr.VisitID = 1;

-- d. Count visits per doctor
SELECT 
    d.DoctorID,
    CONCAT(p.FirstName, ' ', p.LastName) AS DoctorName,
    COUNT(v.VisitID) AS VisitCount
FROM Visit v
JOIN Appointment a ON v.AppointmentID = a.AppointmentID
JOIN Doctor d ON a.DoctorID = d.DoctorID
JOIN Person p ON d.PersonID = p.PersonID
GROUP BY d.DoctorID;

-- e. Show medicine stock below a threshold (example: threshold = 20)
SELECT *
FROM Medicine
WHERE QuantityAvailable < 20;

-- f. Join student and department info
SELECT 
    s.StudentID,
    CONCAT(p.FirstName, ' ', p.LastName) AS StudentName,
    d.DeptName,
    s.EnrollmentYear
FROM Student s
JOIN Patient pt ON s.PatientID = pt.PersonID
JOIN Person p ON pt.PersonID = p.PersonID
JOIN Department d ON s.DeptID = d.DeptID;

-- g. List staff workers by campus
SELECT 
    CONCAT(pr.FirstName, ' ', pr.LastName) AS StaffName,
    sr.RoleName,
    pt.CampusID,
    c.Name AS CampusName
FROM StaffWorker sw
JOIN Patient pt ON sw.PatientID = pt.PersonID
JOIN Person pr ON sw.PatientID = pr.PersonID
JOIN Campus c ON pt.CampusID = c.CampusID
JOIN StaffRole sr ON sw.RoleID = sr.RoleID;

-- h. Group appointments by date and count
SELECT 
    AppointmentDate,
    COUNT(*) AS TotalAppointments
FROM Appointment
GROUP BY AppointmentDate
ORDER BY AppointmentDate;
