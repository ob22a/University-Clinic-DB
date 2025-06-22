CREATE TABLE InventoryTransaction (
    TransactionID INT PRIMARY KEY AUTO_INCREMENT,
    MedicineID INT,
    TransactionType ENUM('IN', 'OUT'),
    Quantity INT,
    TransactionDate DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (MedicineID) REFERENCES Medicine(MedicineID)
);
