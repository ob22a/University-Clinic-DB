-- Sample Inserts for Campus
INSERT INTO Campus (CampusID, Name, Location) VALUES
(1, 'Main Campus', '6 Kilo'),
(2, 'Engineering Campus', '5 Kilo'),
(3, 'Health Campus', 'Sefere Selam'),
(4, 'Business Campus', 'Commerce'),
(5, 'Law Campus', '6 Kilo'),
(6, 'Geology Campus', '4 Kilo'),
(7, 'Medical Campus', 'Black Lion Hospital'),
(8, 'Science Campus', '4 Kilo'),
(9, 'Tech Campus', '5 Kilo'),
(10, 'Architecture Campus', 'Lideta');

-- Sample Inserts for Person (10 students + 10 staff workers + 10 doctors + 10 admin staff = 40 entries)
INSERT INTO Person (PersonID, FirstName, LastName, Gender, DOB, Phone) VALUES
(1, 'Obssa', 'Degefu', 'Male', '2000-05-14', '0911000001'),
(2, 'Abel', 'Mekuria', 'Male', '1998-11-22', '0911000002'),
(3, 'Natanim', 'Ketsela', 'Male', '1987-04-18', '0911000003'),
(4, 'Dagimawi', 'Ephrem', 'Male', '1975-02-07', '0911000004'),
(5, 'Aaron', 'Abiyu', 'Male', '2001-07-30', '0911000005'),
(6, 'Betelhem', 'Alemu', 'Female', '1989-12-15', '0911000006'),
(7, 'Samuel', 'Getachew', 'Male', '1995-03-10', '0911000007'),
(8, 'Mahlet', 'Tesfaye', 'Female', '1990-06-23', '0911000008'),
(9, 'Hana', 'Wondimu', 'Female', '2002-08-11', '0911000009'),
(10, 'Binyam', 'Teshome', 'Male', '2000-09-29', '0911000010'),
(11, 'Meskerem', 'Bekele', 'Female', '1993-05-04', '0911000011'),
(12, 'Mulugeta', 'Yilma', 'Male', '1992-10-21', '0911000012'),
(13, 'Tigist', 'Dereje', 'Female', '2000-03-18', '0911000013'),
(14, 'Tewodros', 'Hagos', 'Male', '1994-01-27', '0911000014'),
(15, 'Mikiyas', 'Haile', 'Male', '1998-01-05', '0911000015'),
(16, 'Selam', 'Eshetu', 'Female', '1996-06-25', '0911000016'),
(17, 'Fitsum', 'Demeke', 'Male', '2002-10-12', '0911000017'),
(18, 'Yeshi', 'Ayalew', 'Female', '2001-02-03', '0911000018'),
(19, 'Dawit', 'Endale', 'Male', '1997-08-20', '0911000019'),
(20, 'Helina', 'Gebremedhin', 'Female', '1994-11-30', '0911000020'),
(21, 'Getnet', 'Tsegaye', 'Male', '1978-04-16', '0911000021'),
(22, 'Meron', 'Girma', 'Female', '1981-09-07', '0911000022'),
(23, 'Kalkidan', 'Abera', 'Male', '1983-12-22', '0911000023'),
(24, 'Yodit', 'Mengistu', 'Female', '1979-01-13', '0911000024'),
(25, 'Brook', 'Worku', 'Male', '1984-06-08', '0911000025'),
(26, 'Melat', 'Yonas', 'Female', '1977-07-11', '0911000026'),
(27, 'Tesfaye', 'Abate', 'Male', '1985-08-02', '0911000027'),
(28, 'Rahel', 'Tilahun', 'Female', '1980-03-17', '0911000028'),
(29, 'Daniel', 'Kebede', 'Male', '1976-10-19', '0911000029'),
(30, 'Elshaday', 'Solomon', 'Female', '1982-05-06', '0911000030'),
(31, 'Abinet', 'Gizaw', 'Male', '1991-03-09', '0911000031'),
(32, 'Ruth', 'Shiferaw', 'Female', '1990-04-28', '0911000032'),
(33, 'Sisay', 'Berhanu', 'Male', '1993-07-15', '0911000033'),
(34, 'Biruktawit', 'Asebelign', 'Female', '2000-06-22', '0911000034'),
(35, 'Feven', 'Kidane', 'Female', '1992-12-03', '0911000035'),
(36, 'Saron', 'Assefa', 'Female', '1988-09-10', '0911000036'),
(37, 'Yonas', 'Negash', 'Male', '1986-02-14', '0911000037'),
(38, 'Hiwot', 'Desalegn', 'Female', '1989-06-05', '0911000038'),
(39, 'Henok', 'Aberra', 'Male', '1987-11-21', '0911000039'),
(40, 'Selamawit', 'Zeleke', 'Female', '1995-08-29', '0911000040');

INSERT INTO Patient (PersonID, CampusID) VALUES
(1, 1), (2, 2), (3, 3), (4, 4), (5, 5), (6, 6), (7, 7), (8, 8), (9, 9), (10, 10);

INSERT INTO Department (DeptID, DeptName) VALUES
(1, 'Computer Science'), (2, 'Mechanical Engineering'), (3, 'Public Health'),
(4, 'Accounting'), (5, 'Law'), (6, 'Geology'), (7, 'Medicine'),
(8, 'Biology'), (9, 'Information Technology'), (10, 'Architecture');

INSERT INTO Student (PatientID, StudentID, DeptID, EnrollmentYear) VALUES
(1, 'CS2020001', 1, 2020),
(2, 'ME2020002', 2, 2020),
(3, 'PH2020003', 3, 2020),
(4, 'AC2020004', 4, 2020),
(5, 'LW2020005', 5, 2020),
(6, 'GL2020006', 6, 2020),
(7, 'MD2020007', 7, 2020),
(8, 'BI2020008', 8, 2020),
(9, 'IT2020009', 9, 2020),
(10, 'AR2020010', 10, 2020);

-- Inserting 10 Staff Workers
INSERT INTO Patient (PersonID, CampusID) VALUES
(11, 1), (12, 2), (13, 3), (14, 4), (15, 5), (16, 6), (17, 7), (18, 8), (19, 9), (20, 10);

INSERT INTO StaffRole (RoleName) VALUES
('Security Guard'), ('Cleaner'), ('Receptionist'), ('Maintenance'),
('Technician'), ('Driver'), ('Clerk'), ('IT Support'), ('Nurse Assistant'),
('Supervisor');

INSERT INTO StaffWorker (PatientID, RoleID, WorkUnit) VALUES
(11, 1, 'Main Entrance'),
(12, 2, 'Mechanical Block'),
(13, 3, 'Clinic Front Desk'),
(14, 10, 'General Supervision'),
(15, 4, 'Campus Grounds'),
(16, 5, 'Lab Maintenance'),
(17, 6, 'Transport Unit'),
(18, 7, 'Student Records'),
(19, 8, 'IT Helpdesk'),
(20, 9, 'Clinic Support');

-- Inserting 10 Doctors
INSERT INTO Doctor (PersonID, DoctorID, Specialty, Email, CampusID) VALUES
(21, 1001, 'General Physician', 'getnet.t@univclinic.edu', 1),
(22, 1002, 'Pediatrician', 'meron.g@univclinic.edu', 2),
(23, 1003, 'Dentist', 'kalkidan.a@univclinic.edu', 3),
(24, 1004, 'Dermatologist', 'yodit.m@univclinic.edu', 4),
(25, 1005, 'Cardiologist', 'brook.w@univclinic.edu', 5),
(26, 1006, 'Neurologist', 'melat.y@univclinic.edu', 6),
(27, 1007, 'Orthopedic', 'tesfaye.a@univclinic.edu', 7),
(28, 1008, 'Radiologist', 'rahel.t@univclinic.edu', 8),
(29, 1009, 'Psychiatrist', 'daniel.k@univclinic.edu', 9),
(30, 1010, 'ENT Specialist', 'elshaday.s@univclinic.edu', 10);

-- Inserting 10 Admin Staff
INSERT INTO AdminStaff (PersonID, StaffID, RoleID, Email, CampusID) VALUES
(31, 2001, 3, 'abinet.g@univclinic.edu', 1),
(32, 2002, 7, 'ruth.s@univclinic.edu', 2),
(33, 2003, 8, 'sisay.b@univclinic.edu', 3),
(34, 2005, 10, 'biruktawit.a@univclinic.edu', 5),
(35, 2004, 4, 'feven.k@univclinic.edu', 4),
(36, 2006, 1, 'saron.a@univclinic.edu', 6),
(37, 2007, 2, 'yonas.n@univclinic.edu', 7),
(38, 2008, 6, 'hiwot.d@univclinic.edu', 8),
(39, 2009, 9, 'henok.a@univclinic.edu', 9),
(40, 2010, 10, 'selamawit.z@univclinic.edu', 10);


-- Insert into Appointment
INSERT INTO Appointment (PatientID, DoctorID, AppointmentDate, AppointmentTime, Status, IsEmergency) VALUES
(1, 1001, '2025-06-01', '09:00:00', 'Completed', FALSE),
(2, 1002, '2025-06-02', '10:30:00', 'Completed', TRUE),
(3, 1003, '2025-06-03', '11:00:00', 'Pending', FALSE),
(4, 1004, '2025-06-04', '13:00:00', 'Canceled', FALSE),
(5, 1005, '2025-06-05', '14:00:00', 'Completed', FALSE),
(6, 1006, '2025-06-06', '15:00:00', 'Completed', TRUE),
(7, 1007, '2025-06-07', '16:00:00', 'Pending', FALSE),
(8, 1008, '2025-06-08', '08:00:00', 'Completed', TRUE),
(9, 1009, '2025-06-09', '10:00:00', 'Completed', FALSE),
(10, 1010, '2025-06-10', '12:00:00', 'Completed', FALSE);

-- Insert into Visit
INSERT INTO Visit (AppointmentID, Diagnosis, Notes) VALUES
(1, 'Flu', 'Prescribed rest and fluids'),
(2, 'Hypertension', 'Monitor blood pressure regularly'),
(3, 'Migraine', 'Advised to avoid triggers'),
(5, 'Common Cold', 'No antibiotics needed'),
(6, 'Skin Rash', 'Use prescribed cream'),
(8, 'Ear Infection', 'Antibiotics prescribed'),
(9, 'Fracture', 'Scheduled for surgery'),
(10, 'Anxiety', 'Referred to counselor'),
(7, 'Throat Infection', 'Saltwater gargles and meds'),
(4, 'Back Pain', 'Recommended physiotherapy');

-- Insert into Medicine
INSERT INTO Medicine (MedicineID, Name, QuantityAvailable, ExpiryDate) VALUES
(1, 'Paracetamol', 500, '2026-12-31'),
(2, 'Amoxicillin', 200, '2025-11-30'),
(3, 'Ibuprofen', 300, '2027-01-15'),
(4, 'Cetirizine', 250, '2025-10-10'),
(5, 'Metformin', 400, '2026-08-08'),
(6, 'Aspirin', 350, '2027-05-05'),
(7, 'Loratadine', 100, '2026-03-03'),
(8, 'Omeprazole', 150, '2025-09-09'),
(9, 'Cough Syrup', 80, '2026-06-06'),
(10, 'Insulin', 60, '2025-12-01');

-- Insert into Prescription
INSERT INTO Prescription (VisitID, MedicineID, Dosage, Duration) VALUES
(1, 1, '500mg twice daily', '5 days'),
(2, 5, '500mg once daily', '30 days'),
(3, 3, '200mg when needed', '7 days'),
(5, 1, '500mg every 8 hours', '3 days'),
(6, 4, '10mg daily', '10 days'),
(8, 2, '250mg every 6 hours', '5 days'),
(9, 6, '2 tablets after meal', '2 weeks'),
(10, 10, '10 units twice a day', '30 days'),
(7, 4, '10mg twice daily', '7 days'),
(4, 3, '400mg when needed', '10 days');

-- Insert into InventoryTransaction
INSERT INTO InventoryTransaction (MedicineID, TransactionType, Quantity) VALUES
(1, 'OUT', 50),
(2, 'OUT', 30),
(3, 'OUT', 40),
(4, 'OUT', 25),
(5, 'OUT', 60),
(6, 'OUT', 35),
(7, 'IN', 50),
(8, 'IN', 70),
(9, 'OUT', 20),
(10, 'IN', 100);
