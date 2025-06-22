# University Clinic Database Project

This project represents a relational database for a university clinic system using MySQL. It models entities such as patients, doctors, staff, medicine inventory, and appointments.

## 📁 Project Structure

```
UniversityClinicDB/
│
├── 1_create_database.sql       # Create and select the main database
├── 2_tables/                   # All CREATE TABLE statements
│   ├── campus.sql
│   ├── person.sql
│   ├── patient.sql
│   ├── ...
├── 3_sample_data.sql           # INSERT statements for sample records
├── 4_queries.sql               # SQL queries for reports and data access
├── 5_views.sql                 # Views to simplify data access
├── 6_triggers.sql              # Triggers for integrity and automation
└── README.md                   # You're reading it!
```

## ✅ How to Use

1. **Start MySQL Workbench or any MySQL CLI**
2. **Run the scripts in order**:
   - `1_create_database.sql`
   - Each script in `2_tables/`
   - `3_sample_data.sql`
   - `4_queries.sql`
   - `5_views.sql`
   - `6_triggers.sql`

## 🧠 Key Features

- **Normalized Tables** with foreign key relationships
- **Sample Data** for testing and demonstration
- **Complex Queries** for reporting
- **Views** for easier data access
- **Triggers** to automate business logic like:
  - Preventing double-booking
  - Updating appointment status
  - Reducing medicine stock

## 📌 Sample Entities

- **Campus**
- **Person**, **Patient**, **Doctor**, **AdminStaff**, **Student**, **StaffWorker**
- **Appointments**, **Visits**, **Prescriptions**, **Medicine**
- **Inventory Transactions**

## 📎 Sample Query Examples

- List all emergency appointments
- Join patients with their doctors
- Count visits per doctor
- List low-stock medicines

## Relational Mapping 
![Relational Mapping](https://github.com/user-attachments/assets/fb94e193-4a4e-4eae-967b-8865e1fcd9d0)
