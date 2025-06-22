-- Trigger 1: CompleteAppointment
DELIMITER //
CREATE TRIGGER CompleteAppointment
AFTER INSERT ON Visit
FOR EACH ROW
BEGIN
    UPDATE Appointment
    SET Status = 'Completed'
    WHERE AppointmentID = NEW.AppointmentID;
END;//
DELIMITER ;

-- Trigger 2: ReduceMedicineStock
DELIMITER //
CREATE TRIGGER ReduceMedicineStock
AFTER INSERT ON Prescription
FOR EACH ROW
BEGIN
    UPDATE Medicine
    SET QuantityAvailable = QuantityAvailable - 1
    WHERE MedicineID = NEW.MedicineID;
END;//
DELIMITER ;

-- Trigger 3: PreventDoubleBooking
DELIMITER //
CREATE TRIGGER PreventDoubleBooking
BEFORE INSERT ON Appointment
FOR EACH ROW
BEGIN
    IF EXISTS (
        SELECT 1 FROM Appointment
        WHERE DoctorID = NEW.DoctorID
        AND AppointmentDate = NEW.AppointmentDate
        AND AppointmentTime = NEW.AppointmentTime
    ) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Double booking is not allowed for the same doctor at the same time.';
    END IF;
END;//
DELIMITER ;

-- Trigger 4: ValidateMedicineExpiry
DELIMITER //
CREATE TRIGGER ValidateMedicineExpiry
BEFORE INSERT ON Prescription
FOR EACH ROW
BEGIN
    DECLARE exp_date DATE;
    SELECT ExpiryDate INTO exp_date FROM Medicine WHERE MedicineID = NEW.MedicineID;

    IF exp_date < CURRENT_DATE THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Cannot prescribe expired medicine.';
    END IF;
END;//
DELIMITER ;

-- Trigger 5: AutoRestockMedicine
DELIMITER //
CREATE TRIGGER AutoRestockMedicine
AFTER UPDATE ON Medicine
FOR EACH ROW
BEGIN
    IF NEW.QuantityAvailable < 5 THEN
        INSERT INTO InventoryTransaction (MedicineID, TransactionType, Quantity)
        VALUES (NEW.MedicineID, 'IN', 50);
    END IF;
END;//
DELIMITER ;
